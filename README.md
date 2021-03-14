# UnblockNeteaseMusic Magisk Module
 
  这是用于Magisk的UnblockNeteaseMusic
## 本模块已包含
* [UnblockNeteaseMusic](<https://github.com/nondanee/UnblockNeteaseMusic>)
* [magisk-module-installer](<https://github.com/topjohnwu/magisk-module-installer>)

## 安装

从release下载，然后在Magisk Manager中安装

## 使用

### 使用前

1.安装 `busybox` 2.确保你的设备有 `curl` 命令(更新脚本会使用到) 3.请在有网络的状态下启动

### 服务控制

* 在Andoid termux下以 `su` 权限执行 `UNM` 命令
* 可用参数
```
-help    帮助
check    检查运行状态
start | stop | restart    开启服务|关闭服务|重启服务
boot_start_on    开启开机自启
boot_start_off    关闭启开机自启
update    更新UnblockNeteaseMusic脚本
```
* 例如: `UNM start` 以启动服务

### 注意:服务默认开机自启

## 卸载

* Magisk Manager 中卸载

## 许可

The MIT License
