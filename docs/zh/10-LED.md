# LED 模式

LED 模式用于控制板载或外接可寻址 LED，支持设置颜色、动画和多种 LED 协议。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置 LED 引脚、数量和协议 |
| `set` | 设置 LED 颜色或状态 |
| `fill` | 填充一组 LED |
| `clear` | 关闭 LED |
| `rainbow` | 彩虹动画 |
| `animation` | 运行内置动画 |
| `help` | 查看命令 |

## 使用建议

- 大量 LED 需要独立供电，避免从开发板 GPIO 直接供电。
- 注意 LED 协议和颜色顺序，例如 RGB、GRB 等。

## 示例

```bash
mode led
config
set 0 255 0 0
fill 0 255 0
rainbow
clear
```

[返回中文模式索引](README.md)
