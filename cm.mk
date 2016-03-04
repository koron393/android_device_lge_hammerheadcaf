# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerheadcaf/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerheadcaf
PRODUCT_NAME := cm_hammerheadcaf
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5 CAF
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LMY48M/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LMY48M 2167285 release-keys"

# RR Opti
TARGET_ARCH := arm
TARGET_CPU_VARIANT := krait
TARGET_TOOLS_PREFIX=prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-cortex-a15/bin/arm-linux-androideabi-
TARGET_TOOLCHAIN_ROOT := prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-cortex-a15
TARGET_TC_ROM := 4.9-cortex-a15
TARGET_TC_KERNEL := 4.9-cortex-a15
RR_STRICT := true
RR_GRAPHITE := true
RR_KRAIT := true
RROPTI := true
RR_PIPE := true
RR_O3 := true
