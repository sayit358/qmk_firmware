OLED_ENABLE = yes
OLED_DRIVER = SSD1306
OLED_DRIVER_ENABLE = yes
WPM_ENABLE = yes
OCEAN_DREAM_ENABLE = yes
ifeq ($(strip $(OLED_DRIVER_ENABLE)), yes)
    #... your code here...

    ifdef OCEAN_DREAM_ENABLE
        ifeq ($(strip $(OCEAN_DREAM_ENABLE)), yes)
            SRC += ocean_dream.c
            OPT_DEFS += -DOCEAN_DREAM_ENABLE
        endif
    endif
    ifndef OCEAN_DREAM_ENABLE
        SRC += ocean_dream.c
        OPT_DEFS += -DOCEAN_DREAM_ENABLE
    endif
endif
