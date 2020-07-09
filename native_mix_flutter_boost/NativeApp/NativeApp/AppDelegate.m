//
//  AppDelegate.m
//  NativeApp
//
//  Created by 李雪峰 on 2020/7/7.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "AppDelegate.h"
#import <flutter_boost/FlutterBoost.h>
#import "PlatformRouterImp.h"

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
    
    return YES;
}



@end
