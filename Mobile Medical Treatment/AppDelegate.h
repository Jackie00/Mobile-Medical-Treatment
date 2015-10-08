//
//  AppDelegate.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"


//定义颜色
#define RGBACOLOR(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define xServer @""

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate,BMKGeneralDelegate>


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) UITabBarController *tabBar;


- (UITabBarItem *)itemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;
- (void)loginSuccessfulCompleteBlock:(void (^) (void))block;
- (void)fillViews:(NSInteger)i;


@end

