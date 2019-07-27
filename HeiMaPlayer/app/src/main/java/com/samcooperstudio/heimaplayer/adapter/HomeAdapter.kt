package com.samcooperstudio.heimaplayer.adapter

import android.support.v7.widget.RecyclerView
import android.view.View
import android.view.ViewGroup
import com.itheima.player.model.bean.HomeItemBean
import com.samcooperstudio.heimaplayer.widget.HomeItemView
import com.samcooperstudio.heimaplayer.widget.LoadMoreView

class HomeAdapter: RecyclerView.Adapter<HomeAdapter.HomeHolder>() {
    var showMore = false
    private var list = ArrayList<HomeItemBean>()

    override fun onCreateViewHolder(p0: ViewGroup, p1: Int): HomeHolder {
        if (p1 == 1) {
            return HomeHolder(LoadMoreView(p0.context))
        } else {
            return HomeHolder(HomeItemView(p0.context))
        }
    }

    override fun getItemCount(): Int {
        if (showMore == false) {
            return list.size
        }

        return list.size+1
    }

    override fun getItemViewType(position: Int): Int {
        if (position == list.size && showMore == true) {
            return 1
        } else {
            return 0
        }
    }

    override fun onBindViewHolder(p0: HomeHolder, p1: Int) {
        if (p1 == list.size && showMore == true) {
            return
        } else {
            //数据
            val data = list[p1]
            //view
            val itemView = p0.itemView as HomeItemView
            itemView.setData(data)
        }
    }

    class HomeHolder(itemView: View): RecyclerView.ViewHolder(itemView) {

    }

    /**
     * 刷新列表
     */
    fun updateList(list: List<HomeItemBean>, showMore: Boolean) {
        this.list.clear()
        this.list.addAll(list)
        this.showMore = showMore

        notifyDataSetChanged()
    }

    fun loadMore(list: List<HomeItemBean>, showMore: Boolean) {
        this.showMore = showMore
        this.list.addAll(list)

        notifyDataSetChanged()
    }
}