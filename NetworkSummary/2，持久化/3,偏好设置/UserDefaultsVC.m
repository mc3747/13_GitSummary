//
//  UserDefaultsVC.m
//  NetworkSummary
//
//  Created by gjfax on 2018/11/15.
//  Copyright © 2018 macheng. All rights reserved.
//

#import "UserDefaultsVC.h"

@interface UserDefaultsVC ()

@end

@implementation UserDefaultsVC
// =====================================================
/*
 偏好设置： 很多iOS应用都支持偏好设置，比如保存用户名、密码、字体大小等设置，iOS提供了一套标准的解决方案来为应用加入偏好设置功能。每个应用都有个NSUserDefaults实例，通过它来存取偏好设置
 
 用NSUserDefaults存储的数据下次程序运行的时候依然存在，那么它把数据存储在什么地方了呢？
其实它存储在应用程序内置（沙盒）的一个plist文件里，路径是 /Library/Prefereces它的存储形式其实就是一种XML格式的文件
 */
// =====================================================
- (void)viewDidLoad {
    [super viewDidLoad];
    // 沙盒路径
    NSString *sandboxPath = NSHomeDirectory();
    NSLog(@"%@",sandboxPath);
    
    // 保存数据
    //获取NSUserDefaults对象
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //保存数据
    [defaults setObject:@"jack" forKey:@"name"];
    [defaults setInteger:20 forKey:@"age"];
    [defaults setBool:YES forKey:@"sex"];//YES表示性别为男性
    //同步数据
    [defaults synchronize];
    
    // 读取数据
    //获取NSUserDefaults对象
    //读取数据（类型需要与存储时保持一致）
    NSString *name = [defaults objectForKey:@"name"];
    NSInteger age = [defaults integerForKey:@"age"];
    BOOL sex = [defaults boolForKey:@"sex"];
    NSLog(@"name:%@;age:%ld;sex:%i",name,(long)age,sex);
    
    // 删除数据
    //    [defaults removeObjectForKey:@"sex"];
}



@end
