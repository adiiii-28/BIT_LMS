<?php
defined('MOODLE_INTERNAL') || die();

/**
 * Returns the main SCSS content for BIT LMS.
 *
 * @param theme_config $theme
 * @return string
 */
function theme_bitlms_get_main_scss_content($theme) {
    $scss = theme_boost_get_main_scss_content($theme);

    $scss .= "\n";
    $scss .= file_get_contents(__DIR__ . '/scss/pre.scss');

    $scss .= "\n";
    $scss .= file_get_contents(__DIR__ . '/scss/post.scss');

    return $scss;
}
