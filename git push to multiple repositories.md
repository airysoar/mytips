# Git同时push多个仓库
## 配置
编辑本地仓库目录下面的.git/config文件，添加：
	
	[remote "all"]
		url = https://username:password@github.com/repos/g0.git
		
		url = https://username:password@bitbucket.org/repos/g1.git
		
    	url = https://username:password@gitcafe.com/repos/g2.git

		url = https://username:password@git.oschina.net/repos/g3.git

push时，运行git push all master。