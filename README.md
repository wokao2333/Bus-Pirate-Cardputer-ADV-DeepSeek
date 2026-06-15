# ESP32 Bit Pirate

![ESP32 Bit Pirate 固件的 Logo 横幅](images/logo_protocols_banner_small.png)


**ESP32 Bit Pirate** 是一款开源固件，可以把你的设备变成一套多协议黑客工具，灵感来自经典的 [Bus Pirate](https://buspirate.com/)。

它支持通过串口终端或基于 Web 的 CLI 对多种数字协议进行嗅探、发送、脚本化操作和交互，包括 I2C、UART、1-Wire、SPI 等。它也可以与 Bluetooth、Wi-Fi、Sub-GHz 和 RFID 等无线协议通信。

你可以使用 [ESP32 Bit Pirate Web Flasher](https://geo-tp.github.io/ESP32-Bit-Pirate/webflasher/) 一键安装固件。每种模式和命令的分步指南请查看 [Wiki](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki)。脚本合集请查看 [ESP32 Bit Pirate Scripts](https://github.com/geo-tp/ESP32-Bit-Pirate-Scripts)。

硬件扩展方面，可以查看 [ESP32 Bus Expander](https://github.com/geo-tp/ESP32-Bus-Expander) 来增加额外的无线接口，也可以使用 [ESP32 Bit Pirate Dock](https://github.com/AndreiVladescu/ESP32-Bit-Pirate-Dock) 搭配原版 [Bus Pirate](https://buspirate.com/) 适配器和配件。

![展示 ESP32 Bit Pirate 固件不同模式的演示](images/bit_pirate_uart.gif)
![展示 ESP32 Bit Pirate 固件 LittleFS 文件系统的演示](images/pirate_assistant.gif)

## 功能特性

- 可通过 **USB 串口或 WiFi Web** 使用交互式命令行界面（CLI）。
- **支持的模式：**
   - [HiZ](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/01-HiZ)（默认）
   - [I2C](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/05-I2C)（扫描、故障注入、从机模式、转储、EEPROM）
   - [SPI](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/06-SPI)（EEPROM、Flash、SD 卡、从机模式）
   - [UART](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/03-UART) / [半双工 UART](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/04-HDUART)（桥接、读取、写入）
   - [1WIRE](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/02-1WIRE)（iButton、EEPROM）
   - [2WIRE](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/07-2WIRE)（嗅探、智能卡）/ [3WIRE](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/08-3WIRE)（EEPROM）
   - [DIO](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/09-DIO)（数字 I/O、读取、上拉、设置、PWM）
   - [红外](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/11-INFRARED)（发送、录制、万能遥控）
   - [USB](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/12-USB)（HID、flashrom、存储、USB-UART）
   - [Bluetooth](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/13-BLUETOOTH)（BLE HID、扫描、伪装、嗅探）
   - [Wi-Fi](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/14-WIFI) / [Ethernet](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/18-ETHERNET)（嗅探、解除认证、nmap、netcat）
   - [JTAG](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/15-JTAG)（扫描、SWD、OpenOCD）
   - [LED](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/10-LED)（动画、设置 LED）
   - [I2S](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/16-I2S)（测试扬声器、麦克风、播放声音）
   - [CAN](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/17-CAN)（嗅探、发送和接收帧）
   - [SUBGHZ](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/19-SUBGHZ)（分析、录制、重放）
   - [RFID](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/20-RFID)（读取、写入、克隆）
   - [RF24](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/21-RF24)（扫描、发送、接收）
   - [FM](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/22-FM)（分析、广播）
   - [CELL](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/23-CELL)（转储 SIM 卡、短信、通话）


- **协议嗅探器**：I2C、UART、SPI、1Wire、2wire、CAN、Wi-Fi、Bluetooth、SubGhz。
- UART 支持波特率**自动检测**、AT 命令和多种工具。
- I2C 支持寄存器操作、**EEPROM 转储工具**和设备识别。
- SPI 支持读取多种 **EEPROM、Flash** 以及其他工具。
- 可使用 **Bus Pirate 风格字节码**指令或 **Python** 进行脚本化操作。
- Device-B-Gone 命令支持超过 **80 种红外协议**。
- 直接 I/O 管理，支持 **PWM、舵机、GPIO 状态**。
- 可在**各个频段**分析无线信号和频率。
- 支持近 **50 种可寻址 LED 协议**。
- 支持通过 **Ethernet 和 WiFi** 访问网络。
- 可通过 **HTTP 上的 LittleFS** 导入和导出数据。
- **Pirate assistant** 可帮助你使用固件。
- 支持 **USB-UART 转接器、SPI 编程器、逻辑分析仪**等功能。

## 支持的设备


| 设备 |  | 描述 |
|-----------------------|------------------------------------------|---------------------------------------------------|
| **ESP32 S3 Dev Kit** | ![ESP32 S3 Dev Kit 照片](/images/s3-devkit_s.jpg) | 超过 20 个可用 GPIO，1 个按键 |
| **LILYGO T-Display** | ![T-Display-S3 照片](/images/t_displays3_s.jpg) | 13 个 GPIO（1 个 Qwicc）、屏幕、2 个按键 |
| **LILYGO T-Embed** | ![LILYGO T-Embed 照片](/images/tembed_s.jpg) | 9 个 GPIO（Grove、排针）、屏幕、编码器、扬声器、麦克风、SD 卡 |
| **LILYGO T-Embed CC1101** | ![LILYGO T-Embed CC1101 照片](/images/tembedcc1101_s.jpg) | 4 个 GPIO（2 个 Qwiic）、屏幕、编码器、扬声器、麦克风、SD 卡、CC1101、PN532、红外发射、红外接收、电池 |
| **LILYGO T-Embed CC1101 Plus** | ![LILYGO T-Embed CC1101 Plus 照片](/images/tembedcc1101_s.jpg) | 4 个 GPIO（2 个 Qwiic）、屏幕、编码器、扬声器、麦克风、SD 卡、CC1101、NRF24、PN532、红外发射、红外接收、电池 |
| **M5 AtomS3 Lite** | ![M5 Atom S3 Lite 照片](/images/atom_s.jpg) | 8 个 GPIO（Grove、排针）、红外发射、1 个按键 |
| **M5 Cardputer** | ![M5 Cardputer 照片](/images/cardputer_s.png) | 2 个 GPIO（Grove）、屏幕、键盘、麦克风、扬声器、红外发射、SD 卡、电池、[独立模式](#standalone-mode-for-the-cardputer) |
| **M5 Cardputer ADV** | ![M5 Cardputer ADV 照片](/images/cardputer-adv_s.jpg) | 12 个 GPIO（Grove、排针）、屏幕、键盘、麦克风、扬声器、红外发射、SD 卡、IMU、电池、[独立模式](#standalone-mode-for-the-cardputer) |
| **M5 StampS3** | ![M5 StampS3 照片](/images/stamps3_s.jpg) | 9 个 GPIO（外露引脚）、1 个按键 |
| **M5 Stick S3** | ![M5 Stick S3 照片](/images/m5sticks3_s.jpg) | 13 个 GPIO（Grove、排针）、屏幕、麦克风、扬声器、红外发射、红外接收、IMU、3 个按键、电池 |
| **Seeed Studio Xiao S3** | ![Seeed Studio Xiao ESP32-S3 照片](/images/xiaos3_s.jpg) | 9 个 GPIO（外露引脚）、1 个按键 |

- **其他基于 ESP32-S3 的开发板**

  - 所有基于 **ESP32-S3 的开发板都可以支持**，前提是至少有 **8 MB Flash**。

  - 你可以把 **S3 Dev Kit 固件刷入任意 ESP32-S3 开发板**。

  - 请注意，固件中的**默认引脚映射可能与你的具体开发板不一致**。

## 快速开始

[![ESP32 Bit Pirate Web Flasher 横幅](images/flasher.jpg)](https://geo-tp.github.io/ESP32-Bit-Pirate/webflasher/)

1. 🔧 刷写固件
   - 使用 [ESP32 Bit Pirate Web Flasher](https://geo-tp.github.io/ESP32-Bit-Pirate/webflasher/) 直接从浏览器烧录固件。
   - 你也可以在 [M5Burner](https://docs.m5stack.com/en/download) 中烧录，分类为 StickS3、AtomS3、M5StampS3 或 Cardputer。

2. 🔌 通过串口或 Web 连接
   - 串口：使用任意终端应用（参见 [Connect via Serial](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/99-Serial)）
   - Web：配置 Wi-Fi，然后通过浏览器访问 CLI（参见 [Wi-Fi Connection](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/00-Terminal)）

3. 🧪 使用如下命令：
   ```
   mode
   help
   scan
   sniff
   ...
    ```

## Wiki

[![ESP32 Bit Pirate Wiki 页面横幅](images/bus_pirate_wiki.png)](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/)

📚 **[访问 Wiki](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki)**，查看每种模式和命令的详细文档。

包括：
- [终端模式](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/00-Terminal) - 关于串口和 Web 终端。
- [模式概览](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki) - 浏览支持的模式。
- [串口设置](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/99-Serial) - 通过 USB 进行串口访问。

Wiki 是了解所有功能工作方式的最佳入口。

## 脚本

[![ESP32 Bit Pirate Scripts 页面横幅](images/bus_pirate_scripts.png)](https://github.com/geo-tp/ESP32-Bit-Pirate-Scripts/)

🛠️ 可以通过**串口上的 Python 脚本**[自动化操作 ESP32 Bit Pirate](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/99-Python)。

**示例和可直接使用的脚本**位于仓库：[ESP32 Bit Pirate Scripts](https://github.com/geo-tp/ESP32-Bus-Pirate-Scripts)。

**包括：** 将数据记录到文件、EEPROM 和 Flash 转储、与 GPIO 交互、LED 动画等。

## 扩展板

[![ESP32 Bit Pirate Expander 页面横幅](images/bus_pirate_exp.png)](https://github.com/geo-tp/ESP32-Bus-Expander)


🔌 可以通过额外硬件模块[扩展 ESP32 Bit Pirate 的能力](https://github.com/geo-tp/ESP32-Bus-Expander)。
Expander 增加了对 **WiFi 5 GHz** 或其他无线协议的支持。

![连接到 C5 扩展板的 Cardputer](images/cardputer_with_c5.jpg)


## Dock 扩展坞

[![ESP32 Bit Pirate Dock 页面横幅](images/bus_pirate_dock.png)](https://github.com/AndreiVladescu/ESP32-Bit-Pirate-Dock)

🔧 **[面向 ESP32 S3 DevKit 的扩展坞](https://github.com/AndreiVladescu/ESP32-Bit-Pirate-Dock)，设计用于兼容原版 Bus Pirate 适配器。**
它可以让你插入并使用原版 [Bus Pirate](https://buspirate.com/) 生态中的适配器和配件。

![ESP32 Bit Pirate Dock 板卡](images/bus_pirate_dock_board.png)

（即将推出）

[![PCBWay Logo](images/pcbway_logo.png)](https://www.pcbway.com)



## 命令行界面

ESP32 Bit Pirate 固件提供三种命令行界面（CLI）模式：

| 界面 | 优点 | 适合场景 |
|------------------|-----------------------------------------------------------------------------|----------------------------------------|
| **Web 界面** | - 可从任意浏览器访问<br>- 支持 PC、平板、手机<br>- 通过 Wi-Fi 工作<br>- 无需线缆 | 快速测试、演示、无显示器场景 |
| **串口界面** | - 性能更快<br>- 响应即时<br>- 能平稳处理大量数据 | 高强度会话、频繁交互 |
| **独立模式** | - 仅适用于 Cardputer<br>- 使用设备自带键盘<br>- 使用设备自带屏幕 | 便携会话、快速测试 |


所有界面使用相同的命令结构，并且可以互换使用（[更多详情](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/00-Terminal)）。

## 通过 WiFi 使用移动端 Web 界面

![展示 Bit Pirate 固件 Web 界面的 iPhone 截图](images/presentation_mobile.png)

<a id="standalone-mode-for-the-cardputer"></a>
## Cardputer 独立模式

![Cardputer 以独立模式运行 ESP32 Bit Pirate](images/standalonemode_s.png)

## 使用 ESP32 Bit Pirate 通过 WiFi 进行 UART 通信

![使用 ESP32 Bit Pirate 固件进行 UART 通信的演示](images/demo2.gif)

## 贡献

请查看 [How To Contribute](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/99-Contribute) 部分，其中概述了向任意模式**添加新命令的简单方法**。

## 视觉素材

#### [![ESP32 Bit Pirate 固件小 Logo](images/logo_square_small.png)](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/99-Visual-Assets)

请查看[图片、Logo、演示文稿、照片、视频、插图](https://github.com/geo-tp/ESP32-Bit-Pirate/wiki/99-Visual-Assets)。这些视觉素材可以**自由用于博客文章、文档、视频或文章**，帮助解释和推广该固件。


## 警告

> ⚠️ **电压警告**：设备只能在 **3.3V** 或 **5V** 下工作。
> - **不要**连接使用其他电压等级的外设，否则可能会**损坏你的 ESP32**。

> ⚠️ **使用警告**：本固件仅用于**教育、诊断和互操作性测试目的**。
> - 未经适当授权，请勿使用它干扰、探测或操控设备。
> - 避免任何未经授权的射频发射（例如 sub-GHz），这可能违反当地法规或干扰网络与通信。
> - 作者不对该软件或硬件的任何滥用行为负责，包括因未经授权访问或信号发射导致的法律后果。
> - 请始终遵守你所在国家/地区的法律和负责任披露政策。
