# 1WIRE 模式

1WIRE 模式用于和单线总线设备通信，典型用途包括 iButton、Dallas/Maxim 1-Wire 器件和部分 EEPROM。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `scan` | 扫描总线上的 1-Wire 设备 |
| `read` | 读取设备数据或 ROM 信息 |
| `write` | 向设备写入数据，具体行为取决于目标器件 |
| `dump` | 尝试转储设备或存储器内容 |
| `ibutton` | 进入 iButton 相关操作 |
| `eeprom` | 进入 1-Wire EEPROM 操作 |
| `config` | 配置 1-Wire 数据引脚 |
| `help` | 查看当前模式支持的命令 |

## 使用建议

- 先运行 `config` 选择数据引脚。
- 再运行 `scan` 确认设备是否被识别。
- 对 EEPROM 或 iButton 写入前，请先备份原始内容。

## 示例

```bash
mode 1wire
config
scan
read
dump
ibutton
eeprom
```

[返回中文模式索引](README.md)
