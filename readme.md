### 1.安装Git
Ubuntu安装Git: apt-get install git

Centos安装Git：yum install git

查看Git版本信息：git version

配置Git用户信息：
```
git config --global user.name "woider"
git config --global user.email "woider@gmail.com" 
```
### 2.开启ssh服务
Centos默认开启

Ubtuntu安装SSH：apt-get install ssh

查看SSH服务状态：ps -e | grep sshd
### 3.生成SSH KEY
``` 
ssh-keygen -t rsa -C "woider@gmail.com" 
```
### 4.查看SSH KEY
cd 保存的目录 使用vim查看
### 5.github添加SSH KEY
### 6.创建仓库或克隆到本地
git clone
```
/* 创建一个 readme.md 文件 */
root@localhost:/home/baidu# vim readme.md

/* 输出 readme.md 文件内容 */
root@localhost:/home/baidu# cat readme.md 
Git关联GitHub
=============

/* 将文件添加到暂存区 */
root@localhost:/home/baidu# git add readme.md 

/* 提交本次修改 */
root@localhost:/home/baidu# git commit -m "add readme file"
[master 228d321] add readme file
 1 file changed, 2 insertions(+)
 create mode 100644 readme.md
 
 /* 推送到远程仓库 */
root@localhost:/home/baidu# git push origin master
Counting objects: 3, done.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 290 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@github.com:woider/baidu.git
   36c5c1c..228d321  master -> master

root@localhost:/home/baidu#
```
### 常用命令
···
git remote add origin git@github.com:yeszao/dofiler.git         # 配置远程git版本库

git pull origin master                                          # 下载代码及快速合并

git push origin master                                          # 上传代码及快速合并

git fetch origin                                                # 从远程库获取代码

 

git branch                                                      # 显示所有分支

git checkout master                                             # 切换到master分支

git checkout -b dev                                             # 创建并切换到dev分支

git commit -m "first version"                                   # 提交

 

git status                                                      # 查看状态

git log                                                         # 查看提交历史

 

git config --global core.editor vim                             # 设置默认编辑器为vim（git默认用nano）

git config core.ignorecase false                                # 设置大小写敏感

git config --global user.name "YOUR NAME"                       # 设置用户名

git config --global user.email "YOUR EMAIL ADDRESS"             # 设置邮箱
···

