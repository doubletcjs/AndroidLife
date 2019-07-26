package com.samcooperstudio.heimaplayer.ui.fragment

import android.annotation.SuppressLint
import android.content.Intent
import android.os.Bundle
import android.support.v7.preference.*
import android.support.v7.widget.RecyclerView
import com.samcooperstudio.heimaplayer.R
import com.samcooperstudio.heimaplayer.ui.activity.AboutActivity

class SettingFragment: PreferenceFragmentCompat() {

//    override fun onCreate(savedInstanceState: Bundle?) {
//        super.onCreate(savedInstanceState)
//        addPreferencesFromResource(R.xml.setting)
//    }

//    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
//        return inflater.inflate(R.layout.setting_screen, container, false)
//        addPreferencesFromResource(R.xml.setting)
//    }

    override fun onCreatePreferences(p0: Bundle?, p1: String?) {
        setPreferencesFromResource(R.xml.setting, p1)
    }

    private fun setAllPreferencesToAvoidHavingExtraSpace(preference: Preference) {
        preference.isIconSpaceReserved = false
        if (preference is PreferenceGroup) {
            for (i in 0 until preference.preferenceCount) {
                setAllPreferencesToAvoidHavingExtraSpace(preference.getPreference(i))
            }
        }
    }

    override fun setPreferenceScreen(preferenceScreen: PreferenceScreen?) {
        if (preferenceScreen != null) {
            setAllPreferencesToAvoidHavingExtraSpace(preferenceScreen)
        }

        super.setPreferenceScreen(preferenceScreen)
    }

    override fun onCreateAdapter(preferenceScreen: PreferenceScreen?): RecyclerView.Adapter<*> {
        object: PreferenceGroupAdapter(preferenceScreen) {
            @SuppressLint("RestrictedApi")
            override fun onPreferenceHierarchyChange(preference: Preference?) {
                if (preference != null) {
                    setAllPreferencesToAvoidHavingExtraSpace(preference)
                }

                super.onPreferenceHierarchyChange(preference)
            }
        }

        return super.onCreateAdapter(preferenceScreen)
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