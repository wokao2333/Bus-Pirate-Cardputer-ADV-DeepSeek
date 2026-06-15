# ESP32 Bit Pirate 中文模式文档

这里整理了 README 中各个模式链接对应的中文说明。每个页面保留原有命令名称，重点说明用途、常用命令和典型示例。

## 模式列表

- [HiZ 模式](01-HiZ.md)
- [1WIRE 模式](02-1WIRE.md)
- [UART 模式](03-UART.md)
- [半双工 UART 模式](04-HDUART.md)
- [I2C 模式](05-I2C.md)
- [SPI 模式](06-SPI.md)
- [2WIRE 模式](07-2WIRE.md)
- [3WIRE 模式](08-3WIRE.md)
- [DIO 模式](09-DIO.md)
- [LED 模式](10-LED.md)
- [红外模式](11-INFRARED.md)
- [USB 模式](12-USB.md)
- [Bluetooth 模式](13-BLUETOOTH.md)
- [Wi-Fi 模式](14-WIFI.md)
- [JTAG 模式](15-JTAG.md)
- [I2S 模式](16-I2S.md)
- [CAN 模式](17-CAN.md)
- [Ethernet 模式](18-ETHERNET.md)
- [SUBGHZ 模式](19-SUBGHZ.md)
- [RFID 模式](20-RFID.md)
- [RF24 模式](21-RF24.md)
- [FM 模式](22-FM.md)
- [CELL 模式](23-CELL.md)

## 通用说明

- 参数写在 `< >` 中表示必填，例如 `read <addr>`。
- 参数写在 `[ ]` 中表示可选，例如 `dump <addr> [len]`。
- 大多数模式都可以先运行 `config` 配置引脚，再运行 `help` 查看当前模式命令。
- 使用无线、射频、网络相关功能时，请遵守所在地法律法规，只在授权环境中测试。
