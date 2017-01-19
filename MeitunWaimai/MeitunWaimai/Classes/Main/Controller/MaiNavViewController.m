//
//  MaiNavViewController.m
//  MeitunWaimai
//
//  Created by 胡碧涛 on 2017/1/19.
//  Copyright © 2017年 hubitao. All rights reserved.
//

#import "MaiNavViewController.h"

@interface MaiNavViewController ()

@end

@implementation MaiNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
