package com.samcooperstudio.heimaplayer.util

import android.content.Intent
import android.support.v7.widget.Toolbar
import android.view.MenuItem
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.ui.activity.SettingActivity

interface ToolBarManager {
    val toolBar: Toolbar

    /**
     * 初始化主界面的toolbar
     */
    fun initMainToolBar() {
        toolBar.title = "黑马影音"
        toolBar.inflateMenu(R.menu.main)

        /**
         * 如果java接口中只有一个未实现的方法
         */
        toolBar.setOnMenuItemClickListener {
            if (it.itemId == R.id.setting) {
                toolBar.context.startActivity(Intent(toolBar.context, SettingActivity::class.java))
            }

            true
        }

//        toolBar.setOnMenuItemClickListener(object : Toolbar.OnMenuItemClickListener {
//            override fun onMenuItemClick(p0: MenuItem?): Boolean {
//                when (p0?.itemId) {
//                    R.id.setting -> {
//                        //点击跳转设置
//                        toolBar.context.startActivity(Intent(toolBar.context, SettingActivity::class.java))
//                    }
//                }
//
//                return true
//            }
//        })
    }

    /**
     * 处理设置界面的toolbar
     */
    fun initSettingToolbar() {
        toolBar.title = "设置"
    }
}