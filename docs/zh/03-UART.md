# UART 模式

UART 模式用于串口通信、桥接、读取、写入和调试 AT 命令设备。它适合分析串口外设、模块启动日志和简单命令交互。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置 TX/RX 引脚、波特率和串口参数 |
| `bridge` | 进入透明桥接模式 |
| `read` | 从 UART 读取数据 |
| `write <data>` | 向 UART 写入数据 |
| `baudscan` | 尝试自动检测波特率 |
| `at` | 辅助发送 AT 命令 |
| `sniff` | 监听串口通信 |
| `help` | 查看命令 |

## 使用建议

- 连接前确认目标设备电平为 3.3V 或 5V，避免接入不兼容电压。
- TX/RX 通常需要交叉连接：本设备 TX 接目标 RX，本设备 RX 接目标 TX。
- 如果看见乱码，优先检查波特率、数据位、停止位和接线。

## 示例

```bash
mode uart
config
baudscan
read
write AT
bridge
sniff
```

[返回中文模式索引](README.md)
