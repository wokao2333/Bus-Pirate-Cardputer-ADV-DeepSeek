# CELL 模式

CELL 模式用于蜂窝网络相关模块或 SIM 卡测试，包括 SIM 卡信息读取、短信和通话相关操作。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置蜂窝模块或 SIM 接口 |
| `sim` | 读取或转储 SIM 卡相关信息 |
| `sms` | 短信相关操作 |
| `call` | 通话相关操作 |
| `at` | 发送 AT 命令 |
| `help` | 查看命令 |

## 使用建议

- 只测试自己的 SIM 卡和授权模块。
- 发送短信、拨号或联网可能产生运营商费用。

## 示例

```bash
mode cell
config
sim
sms
call
at
```

[返回中文模式索引](README.md)
