# CAN 模式

CAN 模式用于 CAN 总线帧的嗅探、发送和接收，适合诊断授权设备或实验总线。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置 TX/RX 引脚和波特率 |
| `sniff` | 监听 CAN 帧 |
| `send` | 发送 CAN 帧 |
| `read` | 读取接收到的帧 |
| `filter` | 配置过滤条件 |
| `help` | 查看命令 |

## 使用建议

- CAN 总线通常需要收发器芯片，ESP32 GPIO 不能直接连接汽车或工业 CAN 总线。
- 总线两端需要合适终端电阻。

## 示例

```bash
mode can
config
sniff
send
read
filter
```

[返回中文模式索引](README.md)
