package com.example.helloworld;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.annotation.Nullable;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button btn;
    TextView textView;
    Button nextBtn;
    Boolean isKeyBack = false;
    long timeFirst = 0;
    long timeSecond = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn = (Button)findViewById(R.id.button1);
        textView = (TextView)findViewById(R.id.textview1);
        nextBtn = (Button)findViewById(R.id.button2);

        nextBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, NextMainActivity.class);
//                startActivity(intent);
                startActivityForResult(intent, 1);
            }
        });

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                textView.setText("按钮被点击了。");
                Toast.makeText(MainActivity.this, "点击", Toast.LENGTH_LONG).show();
            }
        });

    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == 1) {
            Toast.makeText(MainActivity.this, "从下一个页面返回", Toast.LENGTH_LONG).show();
        }
    }

    public void eixtTap(View v) {
        Button btn1 = findViewById(R.id.button1);
        btn1.setText("点击了");

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("温馨提示");
        builder.setMessage("确定要退出吗？");
        builder.setIcon(R.drawable.ic_launcher_background);
        builder.setCancelable(false);
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                finish();
            }
        });

        builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });

        Dialog dialog = builder.create();
        dialog.show();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            if (isKeyBack == true) {
                timeSecond = System.currentTimeMillis();

                if (Math.abs(timeSecond-timeFirst) < 2000) {
                    finish();
                } else {
                    timeFirst = System.currentTimeMillis();
                    Toast.makeText(this,"再按一次退出程序", Toast.LENGTH_LONG).show();

                    return true;
                }
            } else if (isKeyBack == false) {
                timeFirst = System.currentTimeMillis();
                Toast.makeText(this,"再按一次退出程序", Toast.LENGTH_LONG).show();
                isKeyBack = true;

                return true;
            }
        }

        return super.onKeyDown(keyCode, event);
    }
}
