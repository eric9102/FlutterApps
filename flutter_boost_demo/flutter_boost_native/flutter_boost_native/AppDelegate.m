//
//  AppDelegate.m
//  flutter_boost_native
//
//  Created by 李雪峰 on 2020/7/13.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "AppDelegate.h"
#import "FLNavigationController.h"
//#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    FLNavigationController *navCtl = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"FLNavigationController"];
    self.window.rootViewController = navCtl;
    
    return YES;
}


@end
