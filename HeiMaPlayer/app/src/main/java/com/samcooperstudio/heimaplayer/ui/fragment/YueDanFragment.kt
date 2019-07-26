package com.samcooperstudio.heimaplayer.ui.fragment

import android.graphics.Color
import android.view.Gravity
import android.view.View
import android.widget.TextView
import com.samcooperstudio.heimaplayer.base.BaseFragment
import org.jetbrains.anko.textColor

class YueDanFragment: BaseFragment() {
    override fun initView(): View? {
        val tv = TextView(context)
        tv.gravity = Gravity.CENTER
        tv.textColor = Color.RED
        tv.text = javaClass.simpleName

        return tv
    }
}