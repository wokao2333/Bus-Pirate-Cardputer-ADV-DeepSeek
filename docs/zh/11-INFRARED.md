# 红外模式

红外模式用于接收、录制、解码和发送红外遥控信号，也可用于万能遥控和 Device-B-Gone 场景。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置红外发射和接收引脚 |
| `record` | 录制红外信号 |
| `send` | 发送红外信号 |
| `decode` | 解码接收到的协议和数据 |
| `remote` | 使用万能遥控功能 |
| `devicebgone` | 发送常见关机码 |
| `help` | 查看命令 |

## 使用建议

- 红外接收器需要正确供电并对准遥控器。
- 发送距离和角度受红外 LED 功率、驱动电路和环境光影响。

## 示例

```bash
mode infrared
config
record
decode
send
remote
devicebgone
```

[返回中文模式索引](README.md)
