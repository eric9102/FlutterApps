//
//  AppDelegate.m
//  NativeOne
//
//  Created by 李雪峰 on 2020/7/9.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "AppDelegate.h"
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
    // Runs the default Dart entrypoint with a default Flutter route.
    [self.flutterEngine run];
    // Used to connect plugins (only if you have plugins with iOS platform code).
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
