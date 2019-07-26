package com.samcooperstudio.heimaplayer.ui.activity

import android.preference.PreferenceManager
import android.support.v7.widget.Toolbar
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.base.BaseActivity
import com.samcooperstudio.heimaplayer.util.ToolBarManager
import org.jetbrains.anko.find

class SettingActivity: BaseActivity(), ToolBarManager {
    override val toolBar: Toolbar by lazy { find<Toolbar>(R.id.toolbar) }

    override fun getLayoutId(): Int {
        return R.layout.activity_setting
    }

    override fun initData() {
        initSettingToolbar()
        //获取推送通知是否选中
        val sp = PreferenceManager.getDefaultSharedPreferences(this)
        val push = sp.getBoolean("push", false)

        println("push=$push")
    }
}