
# Phicomm K3 OpenWrt Firmware 🚀
本项目提供了针对 Phicomm K3 路由器的 OpenWrt 固件，旨在提供更多功能和定制选项。

后台地址：[192.168.2.1](http://192.168.2.1)

固件基于 Lean 的 [OpenWrt](https://github.com/coolsnowwolf/lede) 源码，并整合了以下主要插件及功能。

## 一、主要插件

- [Adguardhome](https://github.com/kongfl888/luci-app-adguardhome) 🛡️
- [OpenClash](https://github.com/vernesong/OpenClash) 🌐
- [K3 Screen](https://github.com/lwz322/k3screenctrl_build) 🖥️

保留配置更新固件后，插件的配置可能会丢失，请注意备份

## 二、无线功率调整

如果需要调整无线功率，可以按照以下步骤进行操作：

1. 进入系统-启动项-本地启动脚本
2. 复制以下代码至 "exit 0" 之前:
```shell
iwconfig wlan0 txpower 20
iwconfig wlan1 txpower 20
```
3. 保存&应用
4. 重启路由器
