package com.samcooperstudio.heimaplayer.ui.fragment

import android.content.Intent
import android.os.Bundle
import android.support.v7.preference.Preference
import android.support.v7.preference.PreferenceFragmentCompat
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.ui.activity.AboutActivity

class SettingFragment: PreferenceFragmentCompat() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        addPreferencesFromResource(R.xml.setting)
    }

    override fun onCreatePreferences(p0: Bundle?, p1: String?) {

    }

    override fun onPreferenceTreeClick(preference: Preference?): Boolean {
        val key = preference?.key
        if (key.equals("about")) {
            context?.startActivity(Intent(context, AboutActivity::class.java))
        } else if (key.equals("push")) {

        } else if (key.equals("clear_cache")) {

        } else if (key.equals("no_wifi")) {

        }

        return super.onPreferenceTreeClick(preference)
    }
}