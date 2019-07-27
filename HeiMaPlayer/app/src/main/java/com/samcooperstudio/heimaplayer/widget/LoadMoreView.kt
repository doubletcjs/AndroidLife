package com.samcooperstudio.heimaplayer.widget

import android.content.Context
import android.view.View
import android.widget.RelativeLayout
import com.samcooperstudio.heimaplayer.R

class LoadMoreView(context: Context?) : RelativeLayout(context) {

    init {
        View.inflate(context, R.layout.view_loadmore, this)
    }
}