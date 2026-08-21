#include <inttypes.h>

#include "bsp/display.h"
#include "bsp/esp-bsp.h"
#include "esp_log.h"
#include "libllgoapp.h"
#include "lvgl.h"

static const char *TAG = "llgo-s3";

void app_main(void)
{
    int32_t sum = LLGoAdd(20, 22);
    int32_t counter = LLGoCounterNext(2);

    ESP_LOGI(TAG, "LLGo c-archive: 20 + 22 = %" PRId32 ", counter = %" PRId32,
             sum, counter);

    if (bsp_display_start() == NULL) {
        ESP_LOGE(TAG, "failed to start the AMOLED display");
        return;
    }
    bsp_display_backlight_on();

    bsp_display_lock(-1);
    lv_obj_t *label = lv_label_create(lv_screen_active());
    lv_label_set_text_fmt(label,
                          "LLGo c-archive\nESP32-S3 + ESP-IDF\n20 + 22 = %" PRId32
                          "\ncounter = %" PRId32,
                          sum, counter);
    lv_obj_set_style_text_align(label, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_set_style_text_font(label, &lv_font_montserrat_20, 0);
    lv_obj_center(label);
    bsp_display_unlock();
}
