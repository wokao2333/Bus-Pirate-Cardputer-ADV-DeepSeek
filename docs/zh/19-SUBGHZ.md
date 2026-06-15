# SUBGHZ 模式

SUBGHZ 模式用于 Sub-GHz 无线信号分析、录制和重放，通常需要 CC1101 等射频模块。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置频率、调制方式和射频参数 |
| `scan` | 扫描频段或信号 |
| `analyze` | 分析无线信号 |
| `record` | 录制信号 |
| `replay` | 重放已录制信号 |
| `send` | 发送指定数据 |
| `receive` | 接收数据 |
| `help` | 查看命令 |

## 使用建议

- Sub-GHz 频段受地区法规限制，请只在允许频段和授权场景中使用。
- 重放信号前确认不会影响门禁、遥控、传感器或其他设备。

## 示例

```bash
mode subghz
config
scan
analyze
record
replay
receive
send
```

[返回中文模式索引](README.md)
