/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#pragma once

#define ALS_DEVICE_CONFIG { \
    .hbr = true, \
    .rgbw_max_lux = { 1500, 2600, 1400, 4600 }, \
    .rgbw_max_lux_div = { 1437, 2427, 1369, 4606 }, \
    .rgbw_poly = { \
        { 4.787111E-5, 0.0073087, 0.6651031, 0 }, \
        { 1.1037093E-4, 0.0059161806, 0.82983816, 0 }, \
        { 4.6553232E-5, 0.008220689, 0.24763061, 0 }, \
        { 7.379156E-5, 0.006951839, 0.6299237, 0 }, \
    }, \
    .grayscale_weights = { .33, .42, .25 }, \
    .sensor_inverse_gain = { .0615, .0466, .0361, .0288 }, \
}

#define ALS_SCREEN_RECT 499, 110, 525, 136
