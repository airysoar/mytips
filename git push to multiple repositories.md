# Git同时push多个仓库
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