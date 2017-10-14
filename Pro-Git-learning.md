# Pro Git， 第二版，学习记录

## 起步

### 关于版本控制

> *版本控制系统：Version Control Systems， 简称 VCS*<br />
> *集中化版本控制系统：Centralized Version Control Systems, 简称 CVCS*<br />
> *分布式版本控制系统：Distributed Version Control System，简称 DVCS*

### Git简史

* 2002年到2005年：BitKeeper 来管理和维护Linux代码
* 2005年开始开发设计新的版本管理系统，诞生Git：
    * 速度
    * 简单的设计
    * 对非线性开发模式的强有力支持
    * 完全分布式
    * 有能力高效管理类似 Linux 内核一样的超大规模项目（速度和数据量）

### Git 基础

* 高效：记录快照，而非差异，存储项目随时间改变的快照
* 方便：可在本地执行大部分操作，减少对网络依赖，离线情况下可以正常工作
* 准确：Git可以保证文件的完整性和正确性，通过SHA-1散列（hash，哈希）来计算校验，并索引文件
* 安全：Git只添加数据，不会减少文件，提交到Git的数据难以丢失
* Git的三种状态：
    * 已提交（committed）
    * 已修改（modified）
    * 已暂存（staged）
* Git项目的三个工作区域：
    * git仓库——保存元数据和对象数据库
    * 工作目录——项目某个版本独立出来的内容，从git仓库提取出来的文件，放在磁盘上
    * 暂存区域——是一个文件，保存了将提交的文件列表信息，一般在Git仓库目录中
* 基本的Git工作流程如下：
    1. 在工作目录中修改文件
    2. 暂存文件，将文件的快照放入暂存区域
    3. 提交更新，找到暂存区域的文件，将快照永久性存储到Git仓库目录

### 命令行

* 命令好模式
* GUI模式——图形用户界面（Graphical User Interface）
* MAC用户——终端Termianal
* Windows用户——命令窗口Command Prompt／PowerShell

### Git

#### 安装Git

>*Git保持向后兼容方面表现很好*

* 在Linux上安装Git: <br />
Git官方网站上安装步骤[网址](http://git-scm.com/download/linux)
* 在Mac上安装：
    * Xcode Command Line Tools
    * Termianal 运行'git'即可
    * 最新版本：Git官网 http://git-scm.com/download/mac
    * 作为GitHub for Mac的一部分来安装 http://mac.github.com
* 在Windows上安装
    * Git 官方网站下载 http://git-scm.com/download/win<br />
    *(要注意这是一个名为 Git for Windows的项目（也叫做 msysGit），和 Git 是分别独立的项目)*
    * 安装 GitHub for Windows。 <br />
    (该安装程序包含图形化和命令行版本的 Git。 它也能支持 Powershell，提供了稳定的凭证缓存和健全的 CRLF 设置。http://windows.github.com)

### 初次运行Git前的配置

* 用户信息
    * `git config --global user.name`
    * `git config --global user.email`
* 文本编辑器
    * `git config --global core.editor atom`
* 检查配置信息
    * `git config --list`

### 获取帮助

* Git 命令帮助的获取方法
    * `git help <verb>`    
    * `git <verb> --help`
    * `man git-<verb>`
* Freenode IRC 服务器（irc.freenode.net）的 `#git` 或`#github`频道寻求帮助

### 总结

>**Git 是什么懂了，也安装了Git版本，可以开始学习基础知识了。**


## Git 基础

> **本章是学习Git最重要的一张，涵盖了完成工作的各种基本命令。**
>* 初始化一个**仓库（repository）**
>* 开始或停止**跟踪（track）文件**
>* **暂存（stage）**或者**提交（commit）更改**
>* 如何配置Git来忽略指定的文件和文件模式
>* 如何迅速而简单地撤销错误操作
>* 如何浏览你的项目的历史版本以及不同**提交（commits）间的差异**
>* 如何向你的y远程仓库**推送（push）文件**
>* 如何从你的远程仓库**拉取（pull）文件**
