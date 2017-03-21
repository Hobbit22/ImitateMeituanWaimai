//
//  MainTabBarViewController.m
//  MeitunWaimai
//
//  Created by 胡碧涛 on 2017/1/19.
//  Copyright © 2017年 hubitao. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "MaiNavViewController.h"
#import "PublicHeader.h"

#import "HMHomeViewController.h"
#import "HMOrderTableViewController.h"
#import "HMMineTableViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"bg_tabbar@2x.png"]];
    [self addChildTabbarItem];
}

- (void)addChildTabbarItem{
    HMHomeViewController *home = [[HMHomeViewController alloc] init];
    
    [self addViewController:home withTitle:@"首页" withImageName:@"icon_tabbar_1" withSelectImageName:@"icon_tabbar_1_selected"];
    
    HMOrderTableViewController *order = [[HMOrderTableViewController alloc] init];
    
    [self addViewController:order withTitle:@"订单" withImageName:@"icon_tabbar_2" withSelectImageName:@"icon_tabbar_2_selected"];
    
    HMMineTableViewController *mine = [[HMMineTableViewController alloc] init];
    
    [self addViewController:mine withTitle:@"我的" withImageName:@"icon_tabbar_3" withSelectImageName:@"icon_tabbar_3_selected"];
}

- (void)addViewController: (UIViewController *)viewController withTitle: (NSString *)title withImageName: (NSString *)imgName withSelectImageName: (NSString *)selectImgName{
    viewController.title = title;
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:119/255.0 green:66/255.0 blue:15/255.0 alpha:1.0];
    [viewController.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    [viewController.tabBarItem setImage:[UIImage imageNamed:imgName]];
    
    UIImage *selectImage = [UIImage imageNamed:selectImgName];
    if (iOS7) {
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    [viewController.tabBarItem setSelectedImage:selectImage];
    
    MaiNavViewController *navViewController = [[MaiNavViewController alloc] initWithRootViewController:viewController];
    [self addChildViewController:navViewController];
}

@end
