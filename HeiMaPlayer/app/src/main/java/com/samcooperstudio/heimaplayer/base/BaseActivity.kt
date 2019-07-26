package com.samcooperstudio.heimaplayer.base

import android.app.Activity
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import org.jetbrains.anko.startActivity
import org.jetbrains.anko.toast

abstract class BaseActivity: AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(getLayoutId())

        initData()
        initListener()
    }

    /**
     * 初始化数据
     */
    protected open fun initData() {

    }

    /**
     * adapter listener
     */
    protected open fun initListener() {

    }

    /**
     * 获取布局id
     */
    abstract fun getLayoutId(): Int

    /**
     * 开启activity并且finish当前界面
     */
    inline fun <reified T: Activity> startThenFinishActivity() {
        startActivity<T>()
        finish()
    }

    protected open fun myToast(msg: String) {
        runOnUiThread { toast(msg) }
    }


}