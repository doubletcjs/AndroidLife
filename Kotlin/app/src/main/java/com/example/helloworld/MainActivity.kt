package com.example.helloworld

import android.app.Activity
import android.os.Bundle
import android.view.Window

class MainActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        requestWindowFeature(Window.FEATURE_NO_TITLE)
    }
}
