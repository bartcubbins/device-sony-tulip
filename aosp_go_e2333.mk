# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/tulip/aosp_go_e2303.mk)

# Reserve space for data encryption (12213813248-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12213796864

# DualSim
PRODUCT_PROPERTY_OVERRIDES += \
    persist.multisim.config=dsds \
    persist.radio.multisim.config=dsds \
    ro.telephony.default_network=9,1

PRODUCT_NAME := aosp_e2333
PRODUCT_DEVICE := tulip
PRODUCT_MODEL := Xperia M4 Aqua Dual (AOSP Go)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony