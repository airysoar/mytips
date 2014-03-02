# 使用git同步vim配置
## 安装配置
安装完git后，还需对git中的Curl配置
create curl.cmd with this content：

	@rem Do not use "echo off" to not affect any child calls.
    @setlocal

    @rem Get the abolute path to the parent directory, which is assumed to be the
	@rem Git installation root.
	@for /F "delims=" %%I in ("%~dp0..") do @set git_install_root=%%~fI
	@set PATH=%git_install_root%\bin;%git_install_root%\mingw\bin;%PATH%

	@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
	@if not exist "%HOME%" @set HOME=%USERPROFILE%

	@curl.exe %*

And copy it to C:\Program Files\Git\cmd\curl.cmd, assuming msysgit was installed to c:\Program Files\Git

**直接复制可能会出现以下错误**
> 'curl.exe' is not recognized as an internal or external command, operable program or batch file.

因为\Git\cmd目录中没有curl.exe。Git\bin目录下有，将环境变量换成  "D:\Program Files\Git\bin"即可。

## 一、安装Vundle
	git clone https://github.com/gmarik/vundle.git D:\Projet\vim\vimfiles\bundle\vundle

## 二、安装插件
1. vim-scripts仓库中的插件，可以直接使用Bundle 'L9'这样的格式配置
2. github上其他用户的插件，使用Bundle 'hahaya/hahaya-vim.git'这样用户名加仓库名的方式配置(自己的插件全部使用这种方法配置)

## Vundle命令
* :BundleList -列举出列表中(.vimrc中)配置的所有插件
* :BundleInstall -安装列表中全部插件
* :BundleInstall! -更新列表中全部插件
* :BundleSearch foo -查找foo插件
* :BundleSearch! foo -刷新foo插件缓存
* :BundleClean -清除列表中没有的插件
* :BundleClean! -清除列表中没有的插件
* :BundleUpdate -更新插件


参考：
[http://whitebase01.blogspot.com/2013/09/gitvim.html](http://whitebase01.blogspot.com/2013/09/gitvim.html)
[https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows](https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows)
[http://hahaya.github.io/use-vundle/](http://hahaya.github.io/use-vundle/)

# 批量注释与反注释(转)
## 块选择模式
 **注释** 

* ctrl+v(Win下面ctrl+q)进入列模式
* 大写I，输入注释符“#”或“//”,按ESC重复步骤

**反注释**

* ctrl+v(Win下面ctrl+q)进入列模式，选中按d

## 替换命令
* 批量注释
:起始行号,结束行号s/^/注释符/g

* 取消注释：
:起始行号,结束行号s/^注释符//g

## 实例
> 在27 - 30行添加 // 注释
  :27,30s#^#//#g

> 在27 - 30行删除 // 注释
  :27,30s#^//##g

> 在10 - 20行添加 # 注释
  :10,20s/^/#/g
  
> 在10 - 20行删除 # 注释
  :10,20s/^/#/g

**注意例子中正则的分割符使用的是相反的符号，如果匹配// 那么使用 #作分隔符这样不需要对/作转义处理，节省输入次数。**

原文：
[http://blog.csdn.net/xiajun07061225/article/details/8488210](http://blog.csdn.net/xiajun07061225/article/details/8488210)
