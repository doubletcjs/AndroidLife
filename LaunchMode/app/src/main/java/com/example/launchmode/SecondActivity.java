package com.example.launchmode;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class SecondActivity extends AppCompatActivity {

    public SecondActivity() {
        Log.e("TAG", "SecondActivity()");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
    }

    public void startFirst(View v) {
        startActivity(new Intent(this, MainActivity.class));
    }

    public void startThird(View v) {
        startActivity(new Intent(this, ThirdActivity.class));
    }
}
