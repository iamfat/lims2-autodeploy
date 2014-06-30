lims2-autodeploy
================

LIMS2 bash script to prepare docker environment.

## 全局使用
```bash
sudo cp lims2-autodeploy /usr/local/share/lims2-autodeploy
sudo echo 'PATH="/usr/local/share/lims2-autodeploy/bin:$PATH"' > /etc/profile.d/lims2-autodeploy.sh
# 重新登录之后你就可以使用deploy-lims2命令了
```
