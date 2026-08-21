# LLGo c-archive on ESP32-S3 + ESP-IDF

This proof of concept keeps ESP-IDF and the Waveshare BSP in charge of startup,
FreeRTOS, the display, and the final firmware link. LLGo compiles the Go package
to an Xtensa ESP32-S3 static archive, which the ESP-IDF `main` component links
with `--whole-archive` so its package constructor is retained.

The demo calls two exported Go functions from `app_main` and shows their results
on the 480x480 AMOLED display.

## Build and flash

Build LLGo first, then build the ESP-IDF project:

```sh
go build -o bin/llgo ./cmd/llgo
cd _demo/embed/esp32s3-idf
idf.py set-target esp32s3
idf.py -DLLGO_EXECUTABLE="$PWD/../../../bin/llgo" build
idf.py -p /dev/cu.usbmodem101 flash monitor
```

The exact serial port varies by host. The component also accepts
`LLGO_PREBUILT_ARCHIVE` and `LLGO_PREBUILT_HEADER`, which is useful when ESP-IDF
runs in a container but LLGo runs on the host.

## Current boundary

The `esp32s3-idf` target intentionally accepts only `-buildmode=c-archive`.
This first integration uses allocation-free, single-threaded Go functions.
LLGo's bare-metal runtime is not yet connected to ESP-IDF allocation, FreeRTOS
tasks, synchronization, or timers, so Go allocation, goroutines, channels, and
time-based APIs are outside the scope of this proof of concept.
