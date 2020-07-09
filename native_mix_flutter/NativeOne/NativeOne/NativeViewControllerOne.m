//
//  ViewController.m
//  NativeOne
//
//  Created by 李雪峰 on 2020/7/9.
//  Copyright © 2020 李雪峰. All rights reserved.
//

@import Flutter;
#import "AppDelegate.h"
#import "NativeViewControllerOne.h"

@interface NativeViewControllerOne ()

@end

@implementation NativeViewControllerOne

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)goFlutterPageOne:(id)sender {
    
    FlutterEngine *flutterEngine =
        ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController =
        [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
//    [self presentViewController:flutterViewController animated:YES completion:nil];
    [self.navigationController pushViewController:flutterViewController animated:YES];
    
}

@end
