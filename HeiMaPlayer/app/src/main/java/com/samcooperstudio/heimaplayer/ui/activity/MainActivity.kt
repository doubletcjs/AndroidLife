package com.samcooperstudio.heimaplayer.ui.activity

import android.support.v7.widget.Toolbar
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.base.BaseActivity
import com.samcooperstudio.heimaplayer.util.FragmentUtil
import com.samcooperstudio.heimaplayer.util.ToolBarManager
import kotlinx.android.synthetic.main.activity_main.*

import org.jetbrains.anko.find

class MainActivity : BaseActivity(), ToolBarManager {
    override val toolBar: Toolbar by lazy { find <Toolbar> (R.id.toolbar) }

    override fun getLayoutId(): Int {
        return R.layout.activity_main
    }

    override fun initData() {
        initMainToolBar()
    }

    override fun onEnterAnimationComplete() {
        bottom_bar_container.setTabCurrenItem(0)
    }

    override fun initListener() {
        bottom_bar_container.setOnTabChangedListner {
            val transaction = supportFragmentManager.beginTransaction()
            FragmentUtil.fragmentUtil.getFragment(it)?.let { it1 ->
                transaction.replace(R.id.container,
                    it1, it.toString())
            }
            transaction.commit()
        }
    }
}
