#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Select the SoC
$(call set_soc, arm, udoox)

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_U_BOOT_ENV_SIZE := 0x10000
BOARD_GPT_INI := device/arm/udoox/gpt.ini

PRODUCT_COPY_FILES += \
    device/arm/udoox/fstab.device:root/fstab.${soc_name}

BOARD_SEPOLICY_DIRS += \
    device/arm/udoox/sepolicy

# Must defined at the end of the file
$(call add_device_packages)
