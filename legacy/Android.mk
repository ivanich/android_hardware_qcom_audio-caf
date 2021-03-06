AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
    include $(AUDIO_HW_ROOT)/alsa_sound/Android.mk
    include $(AUDIO_HW_ROOT)/libalsa-intf/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
    include $(AUDIO_HW_ROOT)/audiod/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),msm7x30)
    include $(AUDIO_HW_ROOT)/msm7x30/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),msm8660)
    include $(AUDIO_HW_ROOT)/msm8660/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),qsd8k)
    include $(AUDIO_HW_ROOT)/qsd8k/Android.mk
endif
