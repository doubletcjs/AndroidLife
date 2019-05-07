package com.example.phonesms;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity {
    private static final int MY_PERMISSIONS_REQUEST_CALL_PHONE = 10001;
    private static final int MY_PERMISSIONS_REQUEST_CALL_SMS = 10002;

    private EditText phoneEditText;
    private EditText smsEditText;

    private Button phoneButton;
    private Button smsButton;

    private View.OnClickListener onClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            if (v == phoneButton) {
                Intent intent = new Intent(Intent.ACTION_DIAL);

                String phone = phoneEditText.getText().toString();
                intent.setData(Uri.parse("tel:"+phone));

                startActivity(intent);
            } else if (v == smsButton) {

            }
        }
    };

    private View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() {
        @Override
        public boolean onLongClick(View v) {
            if (v == phoneButton) {
                if (checkReadPermission(Manifest.permission.CALL_PHONE, MY_PERMISSIONS_REQUEST_CALL_PHONE) == true) {
                    String phone = phoneEditText.getText().toString();

                    Intent intent = new Intent(Intent.ACTION_CALL);
                    intent.setData(Uri.parse("tel:"+phone));
                    startActivity(intent);
                }
            } else if (v == smsButton) {

            }

            return true;
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        requestWindowFeature(Window.FEATURE_NO_TITLE);

        setContentView(R.layout.activity_main);

        phoneButton = findViewById(R.id.id_bt_phone);
        smsButton = findViewById(R.id.id_bt_sms);

        phoneEditText = findViewById(R.id.id_et_phone);
        smsEditText = findViewById(R.id.id_et_sms);

        phoneButton.setOnClickListener(onClickListener);
        phoneButton.setOnLongClickListener(onLongClickListener);

        smsButton.setOnClickListener(onClickListener);
        smsButton.setOnLongClickListener(onLongClickListener);
    }
    /**
     * 判断是否有某项权限
     * @param string_permission 权限
     * @param request_code 请求码
     * @return
     */
    public boolean checkReadPermission(String string_permission,int request_code) {
        boolean flag = false;
        if (ContextCompat.checkSelfPermission(this, string_permission) == PackageManager.PERMISSION_GRANTED) {
            //已有权限
            flag = true;
        } else {
            //申请权限
            if (ActivityCompat.shouldShowRequestPermissionRationale(MainActivity.this, string_permission) == true) {
                // 帮跳转到该应用的设置界面，让用户手动授权
                Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                Uri uri = Uri.fromParts("package", getPackageName(), null);
                intent.setData(uri);
                startActivity(intent);
            } else {
                ActivityCompat.requestPermissions(this, new String[]{string_permission}, request_code);
            }
        }
        return flag;
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        switch (requestCode) {
            case MY_PERMISSIONS_REQUEST_CALL_PHONE:
                //拨打电话
                if (permissions.length != 0 && grantResults[0] != PackageManager.PERMISSION_GRANTED) {
                    //失败
                    Toast.makeText(this, "请允许拨号权限后再试", Toast.LENGTH_SHORT).show();
                } else {
                    //成功
                    Intent intent = new Intent(Intent.ACTION_CALL);

                    String phone = phoneEditText.getText().toString();
                    intent.setData(Uri.parse("tel:"+phone));

                    startActivity(intent);
                }
                break;
        }

        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }
}
