//
//  ViewController.m
//  NetworkSummary
//
//  Created by gjfax on 2018/8/23.
//  Copyright © 2018年 macheng. All rights reserved.
//

#import "ViewController.h"
#import "MultiThreadViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"重难点各个击破";
}

- (IBAction)demo4:(id)sender {
    
}
- (IBAction)demo5:(id)sender {
    
    MultiThreadViewController *vc = [[MultiThreadViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
