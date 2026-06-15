# Bluetooth 模式

Bluetooth 模式用于 BLE 扫描、HID、广播信息查看、伪装测试和蓝牙相关嗅探辅助。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `scan` | 扫描附近 BLE 设备 |
| `hid` | BLE HID 相关功能 |
| `spoof` | 伪装或模拟部分蓝牙信息 |
| `sniff` | 蓝牙相关嗅探辅助 |
| `info` | 显示设备信息 |
| `help` | 查看命令 |

## 使用建议

- 只在自己的设备或授权环境中测试。
- BLE 广播名和地址可能会随机化，扫描结果需要结合 RSSI 和服务 UUID 判断。

## 示例

```bash
mode bluetooth
scan
info
hid
spoof
sniff
```

[返回中文模式索引](README.md)
