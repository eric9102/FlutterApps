//
//  NativeViewControllerTwo.m
//  NativeOne
//
//  Created by 李雪峰 on 2020/7/9.
//  Copyright © 2020 李雪峰. All rights reserved.
//

#import "NativeViewControllerTwo.h"
#import "FlutterHomeViewController.h"
#import "AppDelegate.h"

@interface NativeViewControllerTwo ()

@end

@implementation NativeViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)openFlutterPage:(id)sender {
    
//    FlutterHomeViewController *vc = [[FlutterHomeViewController alloc]init];
//    [vc setInitialRoute:@"flutter_page_two"];
//    [self.navigationController pushViewController:vc animated:YES];
    
    FlutterEngine *flutterEngine =
        ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterHomeViewController *flutterViewController =
        [[FlutterHomeViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    [flutterViewController pushRoute:@"flutter_page_two"];
    [self.navigationController pushViewController:flutterViewController animated:YES];
    
}


@end
