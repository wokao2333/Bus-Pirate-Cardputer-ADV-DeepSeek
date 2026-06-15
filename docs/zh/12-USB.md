# USB 模式

USB 模式用于 USB HID、USB-UART、存储和 flashrom 等功能，具体能力取决于开发板和固件构建。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `hid` | USB HID 相关功能 |
| `storage` | USB 存储相关功能 |
| `flashrom` | 使用 flashrom 场景的辅助功能 |
| `usb-uart` | USB 到 UART 桥接 |
| `config` | 配置 USB 或相关引脚参数 |
| `help` | 查看命令 |

## 使用建议

- 某些 USB 功能需要 ESP32-S3 原生 USB 支持。
- 切换 USB 模式后，主机系统可能需要重新枚举设备。

## 示例

```bash
mode usb
hid
storage
flashrom
usb-uart
```

[返回中文模式索引](README.md)
