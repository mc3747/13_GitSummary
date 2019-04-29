//
//  CommonMethod.m
//  NetworkSummary
//
//  Created by gjfax on 2019/4/29.
//  Copyright © 2019 macheng. All rights reserved.
//

#import "CommonMethod.h"
#import <BAAlert.h>

@implementation CommonMethod
+ (void)showTextViewAlert:(NSString *)msg {
    GJWeakSelf;
    /*! 第一种封装使用示例 */
    [BAAlert ba_alertShowWithTitle:@"结果" message:msg image:nil buttonTitleArray:@[@"确定"] buttonTitleColorArray:@[[UIColor greenColor]] configuration:^(BAAlert *tempView) {
        GJStrongSelf;
        //        temp.bgColor       = [UIColor colorWithRed:0 green:1.0 blue:0 alpha:0.3];
        /*! 开启边缘触摸隐藏alertView */
        tempView.isTouchEdgeHide = YES;
        /*! 添加高斯模糊的样式 */
        tempView.blurEffectStyle = BAAlertBlurEffectStyleLight;
        /*! 开启动画 */
        tempView.showAnimate   = YES;
        //        /*! 进出场动画样式 默认为：1 */
        //        tempView.animatingStyle  = 1;

    } actionBlock:^(BAAlert *tempView, NSInteger index) {
        GJStrongSelf;
        [tempView ba_alertHidden];
       
    }];
}
@end
