# 2WIRE 模式

2WIRE 模式用于两线制协议或简化总线分析，常见用途包括智能卡、时钟/数据线路嗅探和手动时序测试。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置两根信号线 |
| `sniff` | 嗅探两线通信 |
| `smartcard` | 进入智能卡相关工具 |
| `read` | 读取线路状态或数据 |
| `write` | 写入或驱动线路 |
| `help` | 查看命令 |

## 使用建议

- 先确认两根线的角色，例如 CLK/DATA 或 I/O/RST。
- 嗅探时尽量使用高阻输入，不要主动驱动目标总线。

## 示例

```bash
mode 2wire
config
sniff
smartcard
read
write
```

[返回中文模式索引](README.md)
