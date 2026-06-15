# Ethernet 模式

Ethernet 模式用于有线网络访问、扫描和数据测试，适合搭配支持的以太网硬件。

## 常用命令

| 命令 | 说明 |
| --- | --- |
| `config` | 配置以太网参数 |
| `connect` | 初始化或连接网络 |
| `nmap` | 执行简单网络扫描 |
| `netcat` | TCP/UDP 连接和数据测试 |
| `ping` | 测试网络连通性 |
| `info` | 显示网络信息 |
| `help` | 查看命令 |

## 使用建议

- 需要匹配的以太网 PHY 或扩展硬件。
- 网络扫描和探测只应在授权网络中进行。

## 示例

```bash
mode ethernet
config
connect
info
ping
nmap
netcat
```

[返回中文模式索引](README.md)
