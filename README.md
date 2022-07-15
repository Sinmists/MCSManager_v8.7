![doc_logo.png](/public/common/doc_logo.png)
  
[![Status](https://img.shields.io/badge/npm-v6.9.0-blue.svg)](https://www.npmjs.com/)
[![Status](https://img.shields.io/badge/node-v10.16.0-blue.svg)](https://nodejs.org/en/download/)
[![Status](https://travis-ci.org/Suwings/MCSManager.svg?branch=master)](https://travis-ci.org/Suwings/MCSManager)
[![Status](https://img.shields.io/badge/License-MIT-red.svg)](https://github.com/Suwings/MCSManager)


此为MCSManager_v8.7版本的备份，详情参考[官方网站](https://mcsmanager.com/)
<br />

简介
-----------
这是一款可以管理多个 Minecraft 服务端（支持群组端）的 Web 管理面板，并且可以分配多个子账号来分别管理不同的 Minecraft 服务端，支持绝大部分主流的服务端，甚至是其他非 Minecraft 的程序。

控制面板可运行在 Windows 与 Linux 平台，无需数据库与任何系统配置，只需安装 node 环境即可快速运行，属于轻量级的 Minecraft 服务端控制面板。

![main_theme.png](/public/common/main_theme.png)

<br />

运行环境
-----------
推荐 `Node 10.16.0` 以上，无需数据库和更改任何系统配置，开箱即可运行。

<br />


配置文件
-----------
配置文件是程序目录下的 `property.js` 文件，它会在你第一次运行的时候，自动生成。

> 此文件不会与 github 版本冲突，git pull 更新时也不会自动覆盖。

<br />


常见问题
-----------
| 问题 | 详情 |
| ------------------------ | --------------------------------------------------------------------------------------------- |
无法正常安装面板？| [参考教程](https://github.com/Suwings/MCSManager/wiki/Linux-%E4%B8%8B%E5%AE%89%E8%A3%85%E4%B8%8E%E4%BD%BF%E7%94%A8%E8%AF%A6%E8%A7%A3)
Linux 下面板如何后台运行？ | [参考方法](https://github.com/Suwings/MCSManager/wiki/Linux-%E4%B8%8B%E5%AE%89%E8%A3%85%E4%B8%8E%E4%BD%BF%E7%94%A8%E8%AF%A6%E8%A7%A3#%E4%BF%9D%E6%8C%81%E5%90%8E%E5%8F%B0%E8%BF%90%E8%A1%8C)
使用面板开启 `Bedrock Server` 端 | [参考教程](https://github.com/Suwings/MCSManager/wiki/%E4%BD%BF%E7%94%A8%E9%9D%A2%E6%9D%BF%E5%BC%80%E5%90%AF-Bedrock_server-%E6%9C%8D%E5%8A%A1%E7%AB%AF)
面板管理员的默认账号和密码是什么？ | 账号 `#master` 密码 `123456`
面板如何正确关闭？ | `Ctrl+C`
配置文件是什么？ | `property.js` 文件
如何修改面板默认端口？ | `property.js` 文件
如何配置反向代理？ | [Apache 配置参考教程](https://github.com/Suwings/MCSManager/wiki/%E4%BD%BF%E7%94%A8-Apache2.4-%E8%BF%9B%E8%A1%8C%E5%8F%8D%E5%90%91%E4%BB%A3%E7%90%86)
配好反向代理却无法使用？ | [Apache](https://github.com/Suwings/MCSManager/issues/34) [Nginx](https://github.com/Suwings/MCSManager/issues/22) [宝塔上的Nginx](https://github.com/Suwings/MCSManager/wiki/%E5%85%B3%E4%BA%8E%E5%AE%9D%E5%A1%94%E9%9D%A2%E6%9D%BF%E7%9A%84-Nginx-%E5%8F%8D%E5%90%91%E4%BB%A3%E7%90%86%E4%BB%A5%E5%8F%8ASSL%E8%AF%81%E4%B9%A6%E9%83%A8%E7%BD%B2)
反代后文件管理偶尔失效? | 请检查反代机器的防火墙是否拦截
我能修改登录页面吗？| [修改教程](https://github.com/Suwings/MCSManager/wiki/%E8%87%AA%E5%AE%9A%E4%B9%89%E4%BF%AE%E6%94%B9%E7%99%BB%E5%BD%95%E9%A1%B5%E9%9D%A2)
其他常见问题 | [查看 Wiki](https://github.com/Suwings/MCSManager/wiki)
关于HTTP跳转HTTPS的帮助 | [查看 Nginx 301永久重定向 范例](https://github.com/Suwings/MCSManager/wiki/Nginx%E5%85%A8%E5%B1%80301%E6%B0%B8%E4%B9%85%E9%87%8D%E5%AE%9A%E5%90%91)


<br />


在 Windows 运行 
-----------
**已整合成直接运行版本，下载即可运行**(建议使用管理员权限运行):

- 前往release下载 Windows 版本即可，双击 `运行.bat` 或 `Start.bat` 文件即可。

<br />


在 Linux 运行
-----------

**快速安装（适用于AMD64架构 Ubuntu/Centos/Debian/Archlinux）**

```bash
wget https://raw.githubusercontent.com/Sinmists/MCSManager_v8.7/master/linux/install.sh | bash
```

- 执行完成后，使用 `systemctl start mcsm` 即可启动面板服务。
- 面板代码与运行环境自动安装在 `/opt/` 目录下。

<br />


在 MacOS 运行 
-----------

安装 `node`, `npm`, 和 `homebrew`

- 可用于 Apple Silicon（arm64）和 Intel（x64）的 Mac

手动安装 mcsmanager

```zsh
# 克隆仓库
git clone https://github.com/Sinmists/MCSManager_v8.7.git
cd MCSManager_v8.7 || return
# 启动面板
npm start
# 关闭面板使用 Ctrl+C 快捷键即可
```

启动

```bash
#进入目录
cd mcsmanager/
# 启动面板
npm start
```

<br />




项目目录结构
-----------
**注意:** 并不是所有目录的文件我们都建议你进行更改！

| 目录名 | 详情/解释 |
| ------------------------ | --------------------------------------------------------------------------------------------- |
| **property.js**                   |控制面板配置文件|
| **core/logo.txt**               |控制台输出 logo 文字|
| **public/**                      |前端所有代码，资源目录，前后端分离，使用 ws 和 ajax 通讯|
| **public/login/**                |纯 UI 逻辑登陆页面|
| **public/template/**             |前端业务模板，每个模板拥有着一个生命周期，开始与结束。|
| **public/onlinefs_public/**      |文件在线管理模块前端所有代码|
| **public/common/js/meum.js**     |控制面板左侧菜单列表|
| **public/common/js/login.js**    |通用登录流程逻辑，可重复利用在各类 HTML 登录模板|
| **server/server_core**           |Minecraft 服务端核心目录，包括服务端文件，配置，Mod，以及插件|
| **server/x.json**               |Minecraft 服务器面板配置文件|
| **users/x.json**                |控制面板用户配置文件|
| **route/**                      |控制器，HTTP 请求业务逻辑层（可二次扩展）|
| **route/websocket/**            |控制器，Webscoket 请求业务逻辑层（可二次扩展）|
| **core/Process/**                |Minecraft Server 类实现|
| **core/User/**                   |User 类实现|
| **core/DataModel.js**            |数据持久化模型，几乎是所有的配置的 I/O 模型|
| **model/**                      |模型层，用于提供控制器与服务端，用户操作，也提供设计模式模型|
| **helper/**                     |业务逻辑辅助层，用于辅助和重复利用业务逻辑|
| **onlinefs/**                    |文件管理独立模块 ([Suwings/IndependentFileManager](https://github.com/Suwings/IndependentFileManager))|

<br />

浏览器兼容性
-----------
- `ECMAScript 5` 标准
- `IE 11+` `Chrome` `Firefox` `Safari` `Opera` 等现代主流浏览器

**例外:** 文件在线管理界面需要 `IE 11+` 

<br />


权限系统
-----------
尤其注意的是，为了更加简化面板权限系统，我们只分为两种账号。

`管理账号` 凡是以 # 字符开头的用户，均为管理账号，列如 `#master` `#admin` `#test`

`普通账号` 不以 # 字符开头的用户，列如 `test` `usernameww` `xxx`

普通账号能够管理的服务器只能由管理账号来进行设定，管理账号可以管理任何服务器，并且能管理所有用户。

<br />

