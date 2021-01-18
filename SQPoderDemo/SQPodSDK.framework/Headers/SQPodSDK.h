//
//  SQPodSDK.h
//  PayTest
//
//  Created by TonyJR on 2020/12/1.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>


//! Project version number for SQPodSDK.
FOUNDATION_EXPORT double SQPodSDKVersionNumber;

//! Project version string for SQPodSDK.
FOUNDATION_EXPORT const unsigned char SQPodSDKVersionString[];


typedef void(^SQWKBlock)(id _Nullable data);

NS_ASSUME_NONNULL_BEGIN


@interface SQPodSDK : NSObject


@property (strong,nonatomic,readonly) WKWebView *webView;

+ (instancetype)defaultSDK;

/// 初始化SDK
/// @param url 初始URL
- (void)initSDK:(NSString *)appkey url:(NSURL *)url;


/// 在当前窗口中打开URL
/// @param url 要打开的URL
- (void)openURL:(NSURL *)url;

/// 判断URL是否需要由SDK跳转，SDK跳转时会返回YES
/// @param url 要跳转的URL
- (BOOL)shouldRouteURL:(NSURL *)url;

/// 添加网页事件监听
/// @param name 事件名称
/// @param callback 事件回调
- (void)addListener:(NSString *)name callback:(SQWKBlock)callback;


/// 移除网页事件监听
/// @param name 事件名称
- (void)removeListener:(NSString *)name;

@property (nonatomic,readonly,copy) NSString *appkey;
@property (nonatomic,readonly,copy) NSString *url;
@property (nonatomic,readonly,copy) NSString *scheme;

@end

NS_ASSUME_NONNULL_END

