package com.samcooperstudio.heimaplayer.ui.activity

import android.support.v4.view.ViewCompat
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.base.BaseActivity
import kotlinx.android.synthetic.main.activity_splash.*

class SplashActivity: BaseActivity() {
    override fun getLayoutId(): Int {
        return R.layout.activity_splash
    }

    override fun initData() {
        ViewCompat.animate(splash_imageView).scaleX(1.0f).scaleY(1.0f).setDuration(2000)
    }


}