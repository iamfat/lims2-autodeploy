lims2-autodeploy
================

LIMS2 bash script to prepare docker environment.

## 全局使用
```bash
# 获取最新代码
git clone https://github.com/iamfat/lims2-autodeploy.git
# 切换到root
sudo -s
# 将代码库移动到/usr/local/share
mv lims2-autodeploy /usr/local/share/lims2-autodeploy
# 将bin目录加入全局路径
echo 'PATH="/usr/local/share/lims2-autodeploy/bin:$PATH"' > /etc/profile.d/lims2-autodeploy.sh
# 重新登录之后你就可以使用deploy-lims2命令了
```
