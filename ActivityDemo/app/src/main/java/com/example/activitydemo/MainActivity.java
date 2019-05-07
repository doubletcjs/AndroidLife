package com.example.activitydemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends Activity {

    private EditText mainEditText;
    private Button mainNormalButton;
    private Button mainCallBackButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);

        mainEditText = findViewById(R.id.id_et_main);
        mainNormalButton = findViewById(R.id.id_btn_main_normal);
        mainCallBackButton = findViewById(R.id.id_btn_main_callback);

        mainNormalButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MainActivity.this.onClick();
            }
        });

        mainCallBackButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MainActivity.this.onClick();
            }
        });
    }

    protected void onClick() {
        Intent intent = new Intent(MainActivity.this, Main2Activity.class);
        intent.putExtra("MSG", mainEditText.getText().toString());
        startActivityForResult(intent, 0);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 0 && resultCode == 1) {
            mainEditText.setText(data.getStringExtra("RESULT"));
        }

        super.onActivityResult(requestCode, resultCode, data);
    }
}
