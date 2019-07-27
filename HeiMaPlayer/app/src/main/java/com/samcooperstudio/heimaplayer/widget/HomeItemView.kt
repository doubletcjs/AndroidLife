package com.samcooperstudio.heimaplayer.widget

import android.content.Context
import android.view.View
import android.widget.RelativeLayout
import com.itheima.player.model.bean.HomeItemBean
import com.samcooperstudio.heimaplayer.R
import com.squareup.picasso.Picasso
import kotlinx.android.synthetic.main.item_home.view.*

class HomeItemView(context: Context?) : RelativeLayout(context) {
    fun setData(data: HomeItemBean) {
        //歌曲名称
        title.text = data.title
        //简介
        desc.text = data.description
        //加载图片
        Picasso.get().load(data.posterPic).into(bg)
    }

    /**
     * 初始化方法
     */
    init {
        View.inflate(context, R.layout.item_home, this)
    }

}