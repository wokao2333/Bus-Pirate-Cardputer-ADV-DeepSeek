# RFID 模式

RFID 模式用于 RFID/NFC 标签读取、写入和克隆，具体能力取决于硬件模块，例如 PN532。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置 RFID 模块 |
| `read` | 读取标签信息 |
| `write` | 写入标签 |
| `clone` | 克隆标签数据 |
| `scan` | 搜索附近标签 |
| `dump` | 转储标签内容 |
| `help` | 查看命令 |

## 使用建议

- 只对你拥有或获得授权的标签进行读取和写入。
- 写入或克隆前先备份原始数据。

## 示例

```bash
mode rfid
config
scan
read
dump
write
clone
```

[返回中文模式索引](README.md)
