//
//  ViewController.m
//  NativeApp
//
//  Created by 李雪峰 on 2020/7/7.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "RootViewController.h"
#import <flutter_boost/FlutterBoostPlugin.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)goFlutterOnePage:(id)sender {
    
    [FlutterBoostPlugin open:@"first" urlParams:@{kPageCallBackId:@"MycallbackId#1"} exts:@{@"animated":@(YES)} onPageFinished:^(NSDictionary *result) {
        NSLog(@"call me when page finished, and your result is:%@", result);
    } completion:^(BOOL f) {
        NSLog(@"page is opened");
    }];
    
//    [FlutterBoostPlugin open:@"second" urlParams:@{@"present":@(YES),kPageCallBackId:@"MycallbackId#2"} exts:@{@"animated":@(YES)} onPageFinished:^(NSDictionary *result) {
//        NSLog(@"call me when page finished, and your result is:%@", result);
//    } completion:^(BOOL f) {
//        NSLog(@"page is presented");
//    }];
    
}


@end
