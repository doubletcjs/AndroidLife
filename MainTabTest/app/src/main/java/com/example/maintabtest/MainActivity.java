package com.example.maintabtest;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageButton;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends Activity implements View.OnClickListener {
    private ViewPager mViewPager;
    private PagerAdapter mPagerAdapter;
    private List<View> mViewList = new ArrayList<>();

    private ImageButton mHomeButton;
    private ImageButton mModelButton;
    private ImageButton mMallButton;
    private ImageButton mMyButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);

        initView();
        initEvents();
    }

    private void initEvents() {
        mHomeButton.setOnClickListener(this);
        mModelButton.setOnClickListener(this);
        mMallButton.setOnClickListener(this);
        mMyButton.setOnClickListener(this);

        mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrolled(int i, float v, int i1) {

            }

            @Override
            public void onPageSelected(int i) {
                selectImageButton(i);
            }

            @Override
            public void onPageScrollStateChanged(int i) {

            }
        });
    }

    private void initView() {
        mViewPager = findViewById(R.id.id_vp_main);

        LayoutInflater mInflater = LayoutInflater.from(this);
        View mHomeTab = mInflater.inflate(R.layout.hometab, null);
        View mModelTab = mInflater.inflate(R.layout.modeltab, null);
        View mMallTab = mInflater.inflate(R.layout.malltab, null);
        View mMyTab = mInflater.inflate(R.layout.mytab, null);

        mHomeButton = findViewById(R.id.id_btn_home);
        mModelButton = findViewById(R.id.id_btn_model);
        mMallButton = findViewById(R.id.id_btn_mall);
        mMyButton = findViewById(R.id.id_btn_my);

        mViewList.add(mHomeTab);
        mViewList.add(mModelTab);
        mViewList.add(mMallTab);
        mViewList.add(mMyTab);

        mPagerAdapter = new PagerAdapter() {
            @Override
            public int getCount() {
                return mViewList.size();
            }

            @Override
            public boolean isViewFromObject(@NonNull View view, @NonNull Object o) {
                return view == o;
            }

            @NonNull
            @Override
            public Object instantiateItem(@NonNull ViewGroup container, int position) {
                View view = mViewList.get(position);
                container.addView(view);

                return view;
            }

            @Override
            public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) {
                container.removeView(mViewList.get(position));
            }
        };

        mViewPager.setAdapter(mPagerAdapter);
    }

    private void selectImageButton(int selectIndex) {
        mHomeButton.setImageResource(R.drawable.ic_01_n);
        mModelButton.setImageResource(R.drawable.ic_02_n);
        mMallButton.setImageResource(R.drawable.ic_03_n);
        mMyButton.setImageResource(R.drawable.ic_04_n);

        switch (selectIndex) {
            case 0:
                mHomeButton.setImageResource(R.drawable.ic_01_selected);
                break;
            case 1:
                mModelButton.setImageResource(R.drawable.ic_02_selected);
                break;
            case 2:
                mMallButton.setImageResource(R.drawable.ic_03_selected);
                break;
            case 3:
                mMyButton.setImageResource(R.drawable.ic_04_selected);
                break;
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.id_btn_home:
                mViewPager.setCurrentItem(0, false);
                selectImageButton(0);
                break;
            case R.id.id_btn_model:
                mViewPager.setCurrentItem(1, false);
                selectImageButton(1);
                break;
            case R.id.id_btn_mall:
                mViewPager.setCurrentItem(2, false);
                selectImageButton(2);
                break;
            case R.id.id_btn_my:
                mViewPager.setCurrentItem(3, false);
                selectImageButton(3);
                break;
        }
    }
}
