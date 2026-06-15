# HiZ 模式（高阻）

HiZ 是固件启动后的默认模式。进入该模式后，所有总线线路会被关闭，GPIO 通常被配置为输入状态，不主动驱动外部电路。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `mode <name>` | 切换到其他模式 |
| `system` | 打开系统命令交互 shell |
| `man` | 打开固件指南 |
| `profile` | 加载或保存引脚配置 |
| `alias` | 为一个或多个命令创建快捷方式 |
| `repeat <count> <cmd>` | 重复执行命令 |
| `wizard <gpio>` | 监控 GPIO 并尝试识别信号类型 |
| `listen <gpio>` | 将 GPIO 活动转换为音频输出 |
| `logic <gpio>` | 在 ESP32 屏幕上显示逻辑分析结果 |
| `analogic <gpio>` | 读取并显示指定 GPIO 的模拟值 |
| `help` | 显示可用命令 |
| `P` / `p` | 管理上拉状态，在 HiZ 模式下通常不会产生实际效果 |

## 注意事项

原版 Bus Pirate 中的 HiZ 表示真正的三态高阻。ESP32 没有完全等同的“断开”状态，因此固件会尽量把 GPIO 配置为无上拉、无下拉的输入状态。

## 示例

```bash
mode
logic 1
analogic 1
wizard 1
repeat 5 scan
listen 1
alias
help
system
```

[返回中文模式索引](README.md)
