package com.example.wechatmain;

import android.graphics.Color;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import com.jauker.widget.BadgeView;

public class MainActivity extends FragmentActivity {
    private ViewPager mViewPager;
    private FragmentPagerAdapter mAdapter;
    private List<Fragment> mDatas;

    private TextView mChatTextView;
    private TextView mDiscoverTextView;
    private TextView mContactsTextView;

    private BadgeView mChatBadgeView;
    private BadgeView mDiscoverBadgeView;
    private BadgeView mContactsBadgeView;

    private LinearLayout mChatLinearLayout;
    private LinearLayout mDiscoverLinearLayout;
    private LinearLayout mContactsLinearLayout;

    private ImageView mTabLine;
    private int tabLineWidth;
    private int mCurrentPageIndex;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        //AppCompatActivity 隐藏状态栏
        //getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        //隐藏bar
        //getSupportActionBar().hide();

        //Activity 隐藏bar
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        setContentView(R.layout.activity_main);

        initTabLine();
        initView();
    }

    protected void initTabLine() {
        //获取屏幕尺寸
        Display display = getWindow().getWindowManager().getDefaultDisplay();
        DisplayMetrics metrics = new DisplayMetrics();
        display.getMetrics(metrics);

        tabLineWidth = metrics.widthPixels / 3;

        mTabLine = findViewById(R.id.id_iv_tabline);

        ViewGroup.LayoutParams lp = mTabLine.getLayoutParams();
        lp.width = tabLineWidth;
        mTabLine.setLayoutParams(lp);
    }

    protected void initView() {
        mViewPager = findViewById(R.id.id_viewpager);
        mDatas = new ArrayList<Fragment>();

        mChatTextView = findViewById(R.id.id_tv_chat);
        mDiscoverTextView = findViewById(R.id.id_tv_discover);
        mContactsTextView = findViewById(R.id.id_tv_contacts);

        ChatFragment chatFragment = new ChatFragment();
        DiscoverFragment discovertFragment = new DiscoverFragment();
        ContactsFragment contactsFragment = new ContactsFragment();

        mDatas.add(chatFragment);
        mDatas.add(discovertFragment);
        mDatas.add(contactsFragment);

        mChatBadgeView = new BadgeView(MainActivity.this);
        mChatLinearLayout = findViewById(R.id.id_ll_chat);

        mDiscoverBadgeView = new BadgeView(MainActivity.this);
        mDiscoverLinearLayout = findViewById(R.id.id_ll_discover);

        mContactsBadgeView = new BadgeView(MainActivity.this);
        mContactsLinearLayout = findViewById(R.id.id_ll_contacts);

        mAdapter = new FragmentPagerAdapter(getSupportFragmentManager()) {
            @Override
            public Fragment getItem(int i) {
                return mDatas.get(i);
            }

            @Override
            public int getCount() {
                return mDatas.size();
            }
        };

        mViewPager.setAdapter(mAdapter);
        mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrolled(int i, float v, int i1) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) mTabLine.getLayoutParams();

                if (mCurrentPageIndex == 0 && i == 0) { // 0 -> 1
                    layoutParams.leftMargin = (int)(v*tabLineWidth+mCurrentPageIndex*tabLineWidth);
                } else if (mCurrentPageIndex == 1 && i == 1) { // 1 -> 2
                    layoutParams.leftMargin = (int)(mCurrentPageIndex*tabLineWidth+v*tabLineWidth);
                } else if (mCurrentPageIndex == 2 && i == 1) { // 2 -> 1
                    layoutParams.leftMargin = (int)(mCurrentPageIndex*tabLineWidth+(v-1)*tabLineWidth);
                } else if (mCurrentPageIndex == 1 && i == 0) { // 1 -> 0
                    layoutParams.leftMargin = (int)(mCurrentPageIndex*tabLineWidth+(v-1)*tabLineWidth);
                }

                mTabLine.setLayoutParams(layoutParams);
            }

            @Override
            public void onPageSelected(int i) {
                mCurrentPageIndex = i;
                resetTextView(i);
            }

            @Override
            public void onPageScrollStateChanged(int i) {

            }
        });

        resetTextView(0);
        setBadge(0, 9);
        setBadge(1, 19);
        setBadge(2, 239);
    }

    protected void setBadge(int selectIndex, int count) {
        switch (selectIndex) {
            case 0:
                if (mChatBadgeView != null) {
                    mChatLinearLayout.removeView(mChatBadgeView);
                }

                mChatBadgeView.setBadgeCount(count);
                mChatLinearLayout.addView(mChatBadgeView);
                break;
            case 1:
                if (mDiscoverBadgeView != null) {
                    mDiscoverLinearLayout.removeView(mDiscoverBadgeView);
                }

                mDiscoverBadgeView.setBadgeCount(count);
                mDiscoverLinearLayout.addView(mDiscoverBadgeView);
                break;
            case 2:
                if (mContactsBadgeView != null) {
                    mContactsLinearLayout.removeView(mContactsBadgeView);
                }

                mContactsBadgeView.setBadgeCount(count);
                mContactsLinearLayout.addView(mContactsBadgeView);
                break;

            default:
                break;
        }
    }

    protected void resetTextView(int selectIndex) {
        mChatTextView.setTextColor(Color.parseColor("#000000"));
        mDiscoverTextView.setTextColor(Color.parseColor("#000000"));
        mContactsTextView.setTextColor(Color.parseColor("#000000"));

        switch (selectIndex) {
            case 0:
                mChatTextView.setTextColor(Color.parseColor("#008000"));
                break;
            case 1:
                mDiscoverTextView.setTextColor(Color.parseColor("#008000"));
                break;
            case 2:
                mContactsTextView.setTextColor(Color.parseColor("#008000"));
                break;

            default:
                break;
        }
    }
}
