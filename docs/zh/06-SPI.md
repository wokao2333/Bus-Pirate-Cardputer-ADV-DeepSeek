# SPI 模式

SPI 模式用于和 SPI 外设通信，支持 EEPROM、Flash、SD 卡、从机模式以及自定义字节序列。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置 SCK、MOSI、MISO、CS、频率和 SPI 模式 |
| `read` | 从 SPI 设备读取数据 |
| `write` | 向 SPI 设备写入数据 |
| `transfer` | 同时发送并接收 SPI 数据 |
| `dump` | 尝试转储设备内容 |
| `flash` | 进入 SPI Flash 操作 |
| `eeprom` | 进入 SPI EEPROM 操作 |
| `sdcard` | 访问 SD 卡相关功能 |
| `slave` | 进入 SPI 从机模式 |
| `sniff` | 监听 SPI 总线 |
| `[0x9F r:3]` | 使用字节码语法发送自定义序列 |

## 使用建议

- SPI 设备对模式、时钟极性、相位和片选时序比较敏感。
- 读取 Flash 或 EEPROM 前，建议先执行只读命令确认芯片 ID。
- 写入和擦除会修改目标芯片内容，请先备份。

## 示例

```bash
mode spi
config
[0x9F r:3]
flash
eeprom
sdcard
sniff
slave
```

[返回中文模式索引](README.md)
