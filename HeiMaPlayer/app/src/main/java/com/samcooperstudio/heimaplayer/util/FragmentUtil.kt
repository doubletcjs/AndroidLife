package com.samcooperstudio.heimaplayer.util

import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.base.BaseFragment
import com.samcooperstudio.heimaplayer.ui.fragment.HomeFragment
import com.samcooperstudio.heimaplayer.ui.fragment.MvFragment
import com.samcooperstudio.heimaplayer.ui.fragment.VBangFragment
import com.samcooperstudio.heimaplayer.ui.fragment.YueDanFragment

/**
 * 管理fragment的util类
 */
class FragmentUtil private constructor() { //私有化构造方法
    private val homeFragment by lazy { HomeFragment() }
    private val mvFragment by lazy { MvFragment() }
    private val vbangFragment by lazy { VBangFragment() }
    private val yuedanFragment by lazy { YueDanFragment() }

    companion object {
        val fragmentUtil by lazy { FragmentUtil() }
    }

    /**
     * 根据tabid获取对应的fragment
     */
    fun getFragment(tabId: Int): BaseFragment? {
        println("tabId:${tabId.toString()}")

        when (tabId) {
            0 -> return homeFragment
            1 -> return mvFragment
            2 -> return vbangFragment
            3 -> return yuedanFragment
        }

        return null
    }
}