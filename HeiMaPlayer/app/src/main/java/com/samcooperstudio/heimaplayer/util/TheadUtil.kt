package com.samcooperstudio.heimaplayer.util

import android.os.Looper

object TheadUtil {
    val handler = android.os.Handler(Looper.getMainLooper())

    /**
     * 运行在主线程中
     */
    fun runOnMainThead(runnable: Runnable) {
        handler.post(runnable)
    }
}