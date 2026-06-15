# JTAG 模式

JTAG 模式用于调试接口扫描、SWD 辅助和 OpenOCD 相关工作流。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `scan` | 扫描或检测 JTAG 引脚 |
| `swd` | SWD 相关操作 |
| `openocd` | OpenOCD 辅助配置或桥接 |
| `config` | 配置调试引脚 |
| `help` | 查看命令 |

## 使用建议

- 连接目标芯片前确认调试接口电压。
- JTAG/SWD 引脚顺序和复位线路经常因板卡而异，建议先查原理图。

## 示例

```bash
mode jtag
config
scan
swd
openocd
```

[返回中文模式索引](README.md)
