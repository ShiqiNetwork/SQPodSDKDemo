# SQPodSDK

[![CocoaPods](https://img.shields.io/cocoapods/v/SQPodSDK.svg?style=flat)](http://cocoapods.org/?q=SQPodSDK)

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

在URL types下添加{appID}.shiqipod.com

3、修改SceneDelegate.m

```
- (void)scene:(UIScene *)scene openURLContexts:(NSSet<UIOpenURLContext *> *)URLContexts{
    [[SQPodSDK defaultSDK] shouldRouteURL:URLContexts.anyObject.URL];
    /*
    your code
    */
}
```

4、初始化SDK并显示UI

```
[[SQPodSDK defaultSDK] initSDK:@"shiqi" url:[NSURL URLWithString:@"https://stage-sbs.shiqipod.com/simple/mall/shop/1/login/mobile"]];
[SQPodSDK defaultSDK].webView.frame = self.view.bounds;
[self.view addSubview:[SQPodSDK defaultSDK].webView];
```


