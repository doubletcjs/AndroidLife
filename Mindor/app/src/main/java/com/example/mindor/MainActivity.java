package com.example.mindor;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageButton;

import com.example.mindor.category.NoScrollViewPager;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends Activity implements View.OnClickListener {
    private NoScrollViewPager mViewPager;

    private ImageButton mHomeButton;
    private ImageButton mModelButton;
    private ImageButton mMallButton;
    private ImageButton mMyButton;

    private PagerAdapter mPageAdapter;
    private List<View> mListView = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);

        initView();
        initEvents();
    }
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.id_tab_btn_home:
                mViewPager.setCurrentItem(0, false);
                selectImageButton(0);
                break;
            case R.id.id_tab_btn_model:
                mViewPager.setCurrentItem(1, false);
                selectImageButton(1);
                break;
            case R.id.id_tab_btn_mall:
                mViewPager.setCurrentItem(2, false);
                selectImageButton(2);
                break;
            case R.id.id_tab_btn_my:
                mViewPager.setCurrentItem(3, false);
                selectImageButton(3);
                break;
            default:
                break;
        }
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

            default:
                break;
        }
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
        mViewPager.setScroll(false);

        mHomeButton = findViewById(R.id.id_tab_btn_home);
        mModelButton = findViewById(R.id.id_tab_btn_model);
        mMallButton = findViewById(R.id.id_tab_btn_mall);
        mMyButton = findViewById(R.id.id_tab_btn_my);

        LayoutInflater mInflater = LayoutInflater.from(this);
        View tabHome = mInflater.inflate(R.layout.hometab, null);
        View tabModel = mInflater.inflate(R.layout.modeltab, null);
        View tabMall = mInflater.inflate(R.layout.malltab, null);
        View tabMy = mInflater.inflate(R.layout.mytab, null);

        mListView.add(tabHome);
        mListView.add(tabModel);
        mListView.add(tabMall);
        mListView.add(tabMy);

        mPageAdapter = new PagerAdapter() {
            @Override
            public int getCount() {
                return mListView.size();
            }

            @Override
            public boolean isViewFromObject(@NonNull View view, @NonNull Object o) {
                return view == o;
            }

            @NonNull
            @Override
            public Object instantiateItem(@NonNull ViewGroup container, int position) {
                View view = mListView.get(position);
                container.addView(view);

                return view;
            }

            @Override
            public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) {
                container.removeView(mListView.get(position));
            }
        };

        mViewPager.setAdapter(mPageAdapter);
    }
}
