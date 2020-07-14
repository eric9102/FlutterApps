//
//  ViewController.m
//  flutter_boost_native
//
//  Created by 李雪峰 on 2020/7/13.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "FirstViewController.h"
#import <Flutter/Flutter.h>
#import <flutter_boost/FlutterBoostPlugin.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)openFlutterOne:(id)sender {
    
    [FlutterBoostPlugin open:@"first" urlParams:@{kPageCallBackId:@"MycallbackId#1"} exts:@{@"animated":@(YES)} onPageFinished:^(NSDictionary *result) {
        NSLog(@"call me when page finished, and your result is:%@", result);
    } completion:^(BOOL f) {
        NSLog(@"page is opened");
    }];
    
}

@end
