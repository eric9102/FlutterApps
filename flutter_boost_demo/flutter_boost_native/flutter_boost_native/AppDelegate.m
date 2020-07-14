//
//  AppDelegate.m
//  flutter_boost_native
//
//  Created by 李雪峰 on 2020/7/13.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "AppDelegate.h"
#import "FLNavigationController.h"
#import "PlatformRouterImp.h"
//#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    PlatformRouterImp *router = [PlatformRouterImp new];
    [FlutterBoostPlugin.sharedInstance startFlutterWithPlatform:router
                                                        onStart:^(FlutterEngine *engine) {
        
        // 注册MethodChannel，监听flutter侧的getPlatformVersion调用
        FlutterMethodChannel *flutterMethodChannel = [FlutterMethodChannel methodChannelWithName:@"flutter_native_channel" binaryMessenger:engine.binaryMessenger];
        
        [flutterMethodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
            
            NSString *method = call.method;
            if ([method isEqualToString:@"getPlatformVersion"]) {
                NSString *sysVersion = [[UIDevice currentDevice] systemVersion];
                result(sysVersion);
            } else {
                result(FlutterMethodNotImplemented);
            }
            
        }];
    }];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    FLNavigationController *navCtl = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"FLNavigationController"];
    router.navigationController = navCtl;
    self.window.rootViewController = navCtl;
    
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
