package com.example.activitydemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class Main2Activity extends Activity {

    private EditText secondEditText;
    private Button secondNormalButton;
    private Button secondCallBackButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        secondEditText = findViewById(R.id.id_et_second);
        secondNormalButton = findViewById(R.id.id_btn_second_normal);
        secondCallBackButton = findViewById(R.id.id_btn_second_callback);

        Intent intent = getIntent();
        secondEditText.setText(intent.getStringExtra("MSG"));

        secondNormalButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

        secondCallBackButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent1 = new Intent();
                intent1.putExtra("RESULT", secondEditText.getText().toString());

                setResult(1, intent1);
                finish();
            }
        });
    }
}
