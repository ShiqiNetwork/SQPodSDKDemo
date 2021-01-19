//
//  ViewController.m
//  SQPoderDemo
//
//  Created by TonyJR on 2020/12/7.
//

#import "ViewController.h"
#import <SQPodSDK/SQPodSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [[SQPodSDK defaultSDK] initSDK:@"shiqi" url:[NSURL URLWithString:@"https://stage-sbs-test.shiqipod.com/simple/mall/shop/1/login/mobile"]];
    [SQPodSDK defaultSDK].webView.frame = self.view.bounds;
    
    [[SQPodSDK defaultSDK] addListener:@"chooseImages" callback:^(id  _Nullable data) {
        NSLog(@"%@",data);
    }];
    
    [self.view addSubview:[SQPodSDK defaultSDK].webView];
}


@end
