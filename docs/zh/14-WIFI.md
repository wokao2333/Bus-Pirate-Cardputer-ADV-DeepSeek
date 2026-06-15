# Wi-Fi 模式

Wi-Fi 模式用于网络扫描、抓包、解除认证测试、nmap、netcat 和 Wi-Fi 网络调试。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `scan` | 扫描附近 Wi-Fi 网络 |
| `sniff` | 监听 Wi-Fi 流量 |
| `deauth` | 发送解除认证测试帧 |
| `nmap` | 执行简单网络扫描 |
| `netcat` | TCP/UDP 连接和数据测试 |
| `connect` | 连接 Wi-Fi 网络 |
| `ap` | 启动或配置 AP |
| `config` | 配置 Wi-Fi 参数 |
| `help` | 查看命令 |

## 使用建议

- 解除认证、抓包和扫描功能只能在授权网络中使用。
- Wi-Fi 功能可能会和 Web CLI 共用无线资源，测试时注意连接状态。

## 示例

```bash
mode wifi
scan
connect
nmap
netcat
sniff
deauth
```

[返回中文模式索引](README.md)
