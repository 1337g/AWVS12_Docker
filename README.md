### 0x01 概述

来源猪哥的链接`http://t.cn/AimEyPIE`，版本号AWVS 12.0.190902105_x64（2019年9月2日最新版本），封装的一个docker容器，默认官方基于ubuntu，如果需要在centos上安装可参考[超详细centos7 安装最新破解(awvs)Acunetix Vulnerability Scanner12方法 + 汉化](https://woj.app/5397.html)


---


### 0x02 运行

```bash
root@AWVS12_Docker :~# wget http://xianzhi-forum.oss-cn-shanghai.aliyuncs.com/upload/hack/acunetix_12.0.190902105.zip && unzip acunetix_12.0.190902105.zip && mv acunetix_12.0.190902105/linux/acunetix_12.0.190902105_x64.sh ./
root@AWVS12_Docker :~# docker build -t sec_awvs12 . && docker run -d -p 3443:3443 sec_awvs12
root@AWVS12_Docker :~# docker exec -it -u root <CONTAINER ID> /bin/bash


root@b9d47f4ae5bf:~# cd /home/acunetix/.acunetix/v_190902105/scanner/ && ./patch
```

