# shellCtrl

## 概念圖

```mermaid
flowchart TD
    A[Server Center Control] --> B{ssh remote command}
    B --> C(Server 1) & D(Server 1) & E(Server 1)
    C & D & E -.http get script.-> A
```

## 說明
當管理多台服務器時，挑選一台做為控制中心，利用這台控制中心對其他Server進行控制．

遇到比較複雜的腳本時，採用http request的方式來讓remote server取得並執行腳本內容．

##### 目錄說明
- ctrlCenter 放置要對remote server執行的命令
- iptables 防火牆設置集中管理
- monitor 監控伺服器負載

##### 使用說明

`# cp ctrlCenter/config.example ctrlCenter/config`
