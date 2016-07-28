# shellCtrl

## 概念圖

<img src="https://googledrive.com/host/0Bxjw3Y-ONcPtfjNQTUhwbFNFcmpKbG1peklPVTVlSktmbGdjN3owd3hsaGR3eGJwSnlyb1U/201607/A08-01.png">

## 說明
當管理多台服務器時，挑選一台做為控制中心，利用這台控制中心對其他Server進行控制．

遇到比較複雜的腳本時，採用http request的方式來讓remote server取得並執行腳本內容．

##### 目錄說明
- ctrlCenter 放置要對remote server執行的命令
- iptables 防火牆設置集中管理
- monitor 監控伺服器負載

##### 使用說明

`# cp ctrlCenter/config.example ctrlCenter/config`
