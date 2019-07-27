package com.samcooperstudio.heimaplayer.ui.fragment

import android.graphics.Color
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.view.View
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.itheima.player.model.bean.HomeItemBean
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.adapter.HomeAdapter
import com.samcooperstudio.heimaplayer.base.BaseFragment
import com.samcooperstudio.heimaplayer.util.TheadUtil
import com.samcooperstudio.heimaplayer.util.URLProviderUtils
import kotlinx.android.synthetic.main.fragment_home.*
import okhttp3.*
import java.io.IOException
import java.time.ZoneOffset

class HomeFragment: BaseFragment() {
    val adapter by lazy { HomeAdapter() }

    override fun initView(): View? {
        return View.inflate(context, R.layout.fragment_home, null)
    }

    override fun initListener() {
        recyclerView.layoutManager = LinearLayoutManager(context)
        //适配
        recyclerView.adapter = adapter
        //初始化刷新控件
        refreshLayout.setColorSchemeColors(Color.RED, Color.YELLOW, Color.GREEN)
        refreshLayout.setOnRefreshListener {
            //刷新监听
            loadDatas(0)
        }

        //监听列表滑动
        recyclerView.addOnScrollListener(object :RecyclerView.OnScrollListener() {
            override fun onScrollStateChanged(recyclerView: RecyclerView, newState: Int) {
                if (newState == RecyclerView.SCROLL_STATE_IDLE && adapter.showMore == false && adapter.itemCount > 0) {
                    //是否最后一条已经显示
                    val layoutManager = recyclerView.layoutManager
                    if (layoutManager is LinearLayoutManager) {
                        val lastPostion = layoutManager.findLastVisibleItemPosition()
                        if (lastPostion == adapter.itemCount-1) {
                            //最后一条已经显示
                            loadDatas(adapter.itemCount-1)
                        }
                    }
                }
            }

            override fun onScrolled(recyclerView: RecyclerView, dx: Int, dy: Int) {

            }
        })
    }

    override fun initData() {
        //初始化数据
        refreshLayout.isRefreshing = true
        loadDatas(0)
    }

    private fun loadDatas(offset: Int) {
        val pageSize = 20
        val path = URLProviderUtils.getHomeUrl(offset, pageSize)

        val client = OkHttpClient()
        val request = Request.Builder()
            .url(path)
            .get()
            .build()

        client.newCall(request).enqueue(object :Callback {
            /**
             * 子线程调用
             */
            override fun onFailure(call: Call, e: IOException) {
                TheadUtil.runOnMainThead(object :Runnable {
                    override fun run() {
                        //隐藏刷新控件
                        refreshLayout.isRefreshing = false
                    }
                })
                myToast("获取数据失败"+e.localizedMessage)
            }

            override fun onResponse(call: Call, response: Response) {
                val result = response.body.toString()
                val gson = Gson()
                val list = gson.fromJson<List<HomeItemBean>>(result, object :TypeToken<List<HomeItemBean>>() {}.type)

                TheadUtil.runOnMainThead(object :Runnable {
                    override fun run() {
                        var showMore: Boolean = false
                        if (list.size == pageSize) {
                            showMore = true
                        }

                        if (offset == 0) {
                            adapter.updateList(list, showMore)
                        } else {
                            adapter.loadMore(list, showMore)
                        }

                        //隐藏刷新控件
                        refreshLayout.isRefreshing = false
                    }
                })
            }
        })
    }
}