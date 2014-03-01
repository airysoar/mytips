# Git同时push多个仓库
## 安装

1. 下载、安装msysgit
2. 下载、安装TortoiseGit（建议不要取消Puttygen）
> ***新建仓库时，如需建立多个开发者共用的仓库，一定要勾选Make it Bare。***

## Puttygen设置
1. Generate--生成rsa-key。
2. 复制共钥的时候，有些时候会多出分隔符，网站上添加会出错。可先复制到文本修改。
3. 保存私钥，后续设置仓库地址时，可选择putty密码保存。

## 配置
编辑本地仓库目录下面的.git/config文件，添加：
	
	[remote "all"]
		url = https://username:password@github.com/repos/g0.git
		url = https://username:password@bitbucket.org/repos/g1.git
    	url = https://username:password@gitcafe.com/repos/g2.git
		url = https://username:password@git.oschina.net/repos/g3.git

push时，运行git push all master。

## 修改
直接在config文件添加密码不安全后修改为：
	
	[remote "origin"]
	url = https://git.oschina.net/airysoar/mytips.git
	url = https://github.com/airysoar/mytips.git
	url = https://bitbucket.org/airysoar/mytips
	fetch = +refs/heads/*:refs/remotes/origin/*

在TortoiseGit中勾选推送所有分支。	

## 保存密码，添加：
	[credential]    
	helper = store