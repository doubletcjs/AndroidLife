package com.samcooperstudio.heimaplayer.ui.activity

import android.support.v4.view.ViewCompat
import android.support.v4.view.ViewPropertyAnimatorListener
import android.view.View
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.base.BaseActivity
import kotlinx.android.synthetic.main.activity_splash.*

class SplashActivity: BaseActivity(), ViewPropertyAnimatorListener {
    override fun onAnimationEnd(p0: View?) {
        //进入主界面
        startThenFinishActivity<MainActivity>()
    }

    override fun onAnimationCancel(p0: View?) {

    }

    override fun onAnimationStart(p0: View?) {

    }

    override fun getLayoutId(): Int {
        return R.layout.activity_splash
    }

    override fun initData() {
        ViewCompat.animate(splash_imageView).scaleX(1.0f).scaleY(1.0f).setListener(this).setDuration(2000)
    }


}
