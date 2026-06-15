# 终端选择

ESP32 Bit Pirate 固件支持三种主要交互方式：

- **串口 CLI**：通过 USB 连接，在终端中发送命令。
- **Web CLI**：通过已有 Wi-Fi 网络或设备热点，在浏览器中访问命令行界面。
- **独立模式**：使用设备自带屏幕和键盘，仅适用于 Cardputer。

三种方式使用相同的命令和功能，但不同设备的初始设置流程会有所不同。

<img width="600" alt="终端选择示意图" src="https://github.com/user-attachments/assets/6ae8adca-9db5-4e14-9ded-c9d34dc5cf05" />

## Web 串口终端

Web 串口终端可以让兼容浏览器直接访问串口 CLI，不需要安装 PuTTY、minicom 或其他终端软件。

- [打开 ESP32 Bit Pirate Web Tools](https://geo-tp.github.io/ESP32-Bit-Pirate/web-tools/)

<img width="600" alt="ESP32 Bit Pirate Web Tools" src="https://github.com/user-attachments/assets/1ccb419a-1cc8-4581-ba0d-2db2c4077761" />

该终端通过 USB 直接和设备通信，行为类似普通串口终端，支持交互式命令、键盘快捷键、复制粘贴和 ANSI 终端输出。

---

## Stick 快速开始

<img width="390" alt="M5Stick 设置示意图" src="https://github.com/user-attachments/assets/f499afc9-8e34-447b-9d07-fd29ca97c30d" />

由于 **M5Stick** 没有内置键盘，你需要：

1. 通过 **串口** 或 **Wi-Fi HotSpot** 连接设备（参见[串口连接指南](99-Serial.md)）。
2. 选择 WiFi 模式，并使用 `connect` 命令加入你的 Wi-Fi。
3. 重启设备，选择 **WiFi Connect**，然后使用浏览器 CLI。

## Cardputer 快速开始

![cardputer](https://github.com/user-attachments/assets/021fa815-8016-47d3-a5be-d76246964cef)

**M5Stack Cardputer** 内置键盘和屏幕，因此：

- 选择 **Standalone** 模式即可独立使用，不需要串口终端或外部连接。
- 使用 `arrows up/down` 滚动，`esc` 逐行滚动，`tab` 恢复之前输入过的命令。
- 可直接在设备上输入 Wi-Fi 凭据，用于 **WiFi Connect**。
- 选择 **WiFi Hotspot** 可创建直连 Wi-Fi 网络，用于 Web CLI。
- 也可以使用普通串口连接。

---

## M5StampS3、AtomS3、S3 DevKit、Xiao S3 快速开始

![s3-devkit](https://github.com/user-attachments/assets/809a5f81-f376-44ac-89db-601ec4a137c2)

这些设备没有内置屏幕或键盘，因此初始 Wi-Fi 设置需要通过**串口**或 **Wi-Fi Hotspot** 完成。

### 启动流程和 LED 状态

复位后，在 3 秒内按下板载按键：

- **短按** = WiFi Connect
- **长按** = WiFi Hotspot

WiFi Connect 会使用已保存的网络凭据。WiFi Hotspot 会创建一个直连网络，用于 Web CLI，不需要已有 Wi-Fi 网络。

- **蓝色**：没有保存 Wi-Fi 凭据。
- **白色**：正在连接。
- **绿色**：已连接，可打开 Web CLI。
- **红色**：连接失败。

> **重要：**
> 上电时不要一直按住 BOOT 按键，否则设备可能进入 USB bootloader 模式。

### 回退到串口

如果 WiFi Connect 失败，可以使用 WiFi Hotspot，或者重新通过串口连接并运行 `mode wifi`，再运行 `connect`。

## T-Embed 快速 Wi-Fi 设置

![tembedcc1101](https://github.com/user-attachments/assets/bac4ae2e-0bcd-46b8-9481-f9db42f2e787)

1. 给设备上电，并选择 **WiFi Connect** 或 **WiFi Hotspot**。
2. 如果使用 WiFi Connect，用编码器选择网络并输入密码。
3. 打开屏幕上显示的 Web CLI 地址。

## T-Display 快速 Wi-Fi 设置

![t_displays3](https://github.com/user-attachments/assets/1b08ae2d-0bcd-4338-b4d1-c079916f1ae0)

1. 给设备上电，并选择 **WiFi Connect** 或 **WiFi Hotspot**。
2. 如果使用 WiFi Connect，用按键选择网络并输入密码。
3. 打开屏幕上显示的 Web CLI 地址。

### 回退到串口

如果 WiFi Connect 失败，可以使用 WiFi Hotspot，或者重新通过串口连接并运行 `mode wifi`，再运行 `connect`。

---

## 串口连接

请查看专门的[串口连接指南](99-Serial.md)。

## 注意

某些命令可能会根据当前连接方式中断终端会话。

例如，使用 Wi-Fi 断开命令会关闭 Web CLI，而某些 USB 命令会结束 USB 串口连接。

对于会产生大量输出的功能，例如 1-Wire 或 I2C 嗅探器，建议使用串口 CLI，避免丢失数据。

[返回中文模式索引](README.md)
