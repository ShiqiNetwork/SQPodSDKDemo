# SQPodSDK

如何集成拾柒pod
------------
1、导入SDK

1.1、使用cocoapods自动导入（推荐）
```
pod 'SQPodSDK'
```
1.2、手动安装

下载SQPodSDK.framework，并拖入工程
打开General->Frameworks,Libraries,and Embedded Content，找到SQPodSDK.framework，并将Embed选项改为Embed Without Signing

2、配置info.plist

3、初始化SDK并显示UI

```
[[SQPodSDK defaultSDK] initSDK:@"shiqi" url:[NSURL URLWithString:@"https://stage-sbs.shiqipod.com/simple/mall/shop/1/login/mobile"]];
[SQPodSDK defaultSDK].webView.frame = self.view.bounds;
[self.view addSubview:[SQPodSDK defaultSDK].webView];
```


