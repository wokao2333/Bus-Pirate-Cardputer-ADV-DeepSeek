# 串口连接指南

本指南说明如何在电脑上使用串口终端连接 ESP32 Bit Pirate。无论你使用 Windows、macOS 还是 Linux，都可以通过常见终端工具打开串口并与 CLI 交互。

---

## Web 串口终端

Web 串口终端可以让兼容浏览器直接访问串口 CLI，不需要安装 PuTTY、minicom 或其他终端软件。

- [打开 ESP32 Bit Pirate Web Tools](https://geo-tp.github.io/ESP32-Bit-Pirate/web-tools/)

<img width="600" alt="ESP32 Bit Pirate Web Tools" src="https://github.com/user-attachments/assets/0bc73570-7443-4da6-a570-29b8b906bb3f" />

该终端通过 USB 直接和设备通信，行为类似普通串口终端，支持交互式命令、键盘快捷键、复制粘贴和 ANSI 终端输出。

如果看不到串口，请确认开发板暴露了 USB CDC 串口接口，并且使用的是正确的 USB 接口。

---

## Windows

### 查找 COM 端口

打开设备管理器，查看“端口（COM 和 LPT）”。你会看到类似下面的设备：

```text
USB Serial Device (COM3)
```

如果使用 M5Burner，可以在 M5Burner 打开时插入设备，开发板连接后 COM 端口会自动出现。

### 推荐工具：[PuTTY](https://www.putty.org/)

- 免费、开源、轻量。
- 支持串口（COMx）模式。
- 适合命令行交互的纯文本显示。

<img width="900" alt="Windows PuTTY 设置截图" src="https://github.com/user-attachments/assets/e851710a-8243-4410-b51b-d1228d37eec2" />
<img width="900" alt="PuTTY 串口配置截图" src="https://github.com/user-attachments/assets/77f447fd-2b84-47f6-ae60-e86c2d8b9a6d" />

### 其他选择

- [CoolTerm](https://freeware.the-meiers.org/)：界面直观，配置简单。
- [RealTerm](https://realterm.sourceforge.net/)：功能更高级，但界面较旧。
- [YAT (Yet Another Terminal)](https://sourceforge.net/projects/y-a-terminal/)：界面清爽，适合 MCU 调试。

---

## macOS

### 查找串口

在终端中运行：

```bash
ls /dev/tty.usb*
```

你可能会看到类似下面的设备：

```bash
/dev/tty.usbserial-0001
```

如果使用 M5Burner，可以在 M5Burner 打开时插入设备，开发板连接后 USB 接口会自动出现。

### 推荐工具：[CoolTerm](https://freeware.the-meiers.org/)

- 可自动检测 USB 串口，例如 CH340、CP210x、FTDI 等。
- 界面友好，可自定义配置。

### 其他选择

也可以直接使用终端里的 `screen`：

```bash
screen /dev/tty.usbserial-XXXX 115200
```

---

## Linux

### 查找串口

在终端中运行：

```bash
ls /dev/ttyUSB*
ls /dev/ttyACM*
```

你可能会看到类似下面的设备：

```bash
/dev/ttyUSB0
```

如果使用 M5Burner，可以在 M5Burner 打开时插入设备，开发板连接后 USB 接口会自动出现。

### 推荐工具：`screen` 或 `minicom`

#### `screen`

- 大多数发行版默认安装。
- 使用简单：

```bash
screen /dev/ttyUSB0 115200
```

#### `minicom`

- 可通过菜单进行详细配置。
- 第一次设置可运行：

```bash
sudo minicom -s
```

### 其他选择

- `picocom`
- `gtkterm`
- `CuteCom`
- Linux 版 PuTTY

---

## 提示

- 请确认选择了正确的串口，例如 `COM3`、`/dev/ttyUSB0`、`/dev/ttyACM0` 或 `/dev/tty.usbserial-*`。
- 使用 **115200** 波特率、8 数据位、无校验、1 停止位。
- 如果没有看到欢迎信息，可以发送任意按键来唤醒 Bus Pirate 并触发欢迎横幅。

[返回中文模式索引](README.md)
