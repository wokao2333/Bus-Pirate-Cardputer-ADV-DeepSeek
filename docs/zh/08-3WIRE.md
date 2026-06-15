# 3WIRE 模式

3WIRE 模式用于三线制外设，常见于某些 EEPROM 或简化串行协议，通常包含时钟、数据和片选/使能线路。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置三根信号线 |
| `read` | 从设备读取数据 |
| `write` | 向设备写入数据 |
| `dump` | 尝试转储存储器内容 |
| `eeprom` | 进入 3WIRE EEPROM 工具 |
| `help` | 查看命令 |

## 使用建议

- 写入 EEPROM 前先读取并保存备份。
- 如果通信失败，检查片选极性、时钟方向和数据线方向。

## 示例

```bash
mode 3wire
config
read
dump
eeprom
```

[返回中文模式索引](README.md)
