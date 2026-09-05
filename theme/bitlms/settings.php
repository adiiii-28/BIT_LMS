<?php
defined('MOODLE_INTERNAL') || die();

if ($ADMIN->fulltree) {
    $settings = new theme_boost_admin_settingspage_tabs(
        'themesettingbitlms',
        get_string('configtitle', 'theme_bitlms')
    );

    $page = new admin_settingpage(
        'theme_bitlms_general',
        get_string('generalsettings', 'theme_boost')
    );

    $setting = new admin_setting_configcolourpicker(
        'theme_bitlms/brandcolor',
        get_string('brandcolor', 'theme_boost'),
        get_string('brandcolor_desc', 'theme_boost'),
        '#1f4e79'
    );

    $setting->set_updatedcallback('theme_reset_all_caches');
    $page->add($setting);

    $settings->add($page);
}
