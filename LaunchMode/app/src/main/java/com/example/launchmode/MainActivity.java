package com.example.launchmode;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    public MainActivity() {
        Log.e("TAG", "MainActivity()");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.e("TAG", "onCreate()");
    }

    public void startFirst(View v) {
        startActivity(new Intent(this, MainActivity.class));
    }

    public void startSecond(View v) {
        startActivity(new Intent(this, SecondActivity.class));
    }
}
