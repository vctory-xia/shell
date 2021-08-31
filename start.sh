#!/usr/bin/env bash
###
 # @Author: your name
 # @Date: 2021-08-31 14:55:53
 # @LastEditTime: 2021-08-31 15:47:02
 # @LastEditors: your name
 # @Description: In User Settings Edit
 # @FilePath: \shell\test.sh
### 

#检查系统
check_sys() {
    if [[ -f /etc/redhat-release ]]; then
        release="centos"
    elif cat /etc/issue | grep -q -E -i "debian"; then
        release="debian"
    elif cat /etc/issue | grep -q -E -i "ubuntu"; then
        release="ubuntu"
    elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
    elif cat /proc/version | grep -q -E -i "debian"; then
        release="debian"
    elif cat /proc/version | grep -q -E -i "ubuntu"; then
        release="ubuntu"
    elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
    fi
}
#检查Linux版本
check_version() {
    if [[ -s /etc/redhat-release ]]; then
        version=$(grep -oE "[0-9.]+" /etc/redhat-release | cut -d . -f 1)
    else
        version=$(grep -oE "[0-9.]+" /etc/issue | cut -d . -f 1)
    fi
    bit=$(uname -m)
    if [[ ${bit} = "x86_64" ]]; then
        bit="x64"
    else
        bit="x32"
    fi
}
start(){
    check_sys
    check_version
    echo "当前系统为：${release} ${version}"
    if [[ "$release" == "centos" ]]; then
        yum update
    elif [["$release" == "ubuntu" ]]; then
        apt-get update
    fi
}
start
