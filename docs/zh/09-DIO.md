# DIO 模式（数字 I/O）

DIO 模式用于直接控制 GPIO，支持读取电平、设置输出、上拉管理、PWM 和简单信号测试。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `read <gpio>` | 读取指定 GPIO 电平 |
| `set <gpio> H/L` | 将 GPIO 设置为高电平或低电平 |
| `pullup <gpio> on/off` | 控制上拉 |
| `pwm <gpio>` | 输出 PWM |
| `servo <gpio>` | 控制舵机信号 |
| `pulse <gpio>` | 产生脉冲 |
| `config` | 配置可用 GPIO |
| `help` | 查看命令 |

## 使用建议

- 控制外部电路前确认电压和电流限制。
- 不要把两个输出设备直接相连并同时驱动相反电平。

## 示例

```bash
mode dio
read 1
set 1 H
set 1 L
pullup 1 on
pwm 1
servo 1
```

[返回中文模式索引](README.md)
