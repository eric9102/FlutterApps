//
//  FlutterHomeViewController.m
//  NativeOne
//
//  Created by 李雪峰 on 2020/7/9.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "FlutterHomeViewController.h"
#import "NativeViewControllerTwo.h"

@interface FlutterHomeViewController ()

@end

@implementation FlutterHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FlutterMethodChannel* channel = [FlutterMethodChannel methodChannelWithName:@"samples.chenhang/navigation" binaryMessenger:NULL];
    
    [channel setMethodCallHandler:^(FlutterMethodCall* call, FlutterResult result) {
        // Note: this method is invoked on the UI thread.
        if([call.method isEqualToString:@"openNativePage"]) {
    
            NativeViewControllerTwo *nativeTwo = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@""];
            [self.navigationController pushViewController:nativeTwo animated:YES];
            result(@0);
        }
        else if([call.method isEqualToString:@"closeFlutterPage"]) {
            [self.navigationController popViewControllerAnimated:YES];
            result(@0);
        }
        else {
            result(FlutterMethodNotImplemented);
        }
    }];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self navigationController] setNavigationBarHidden:YES animated:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [[self navigationController] setNavigationBarHidden:NO animated:animated];

}

@end
