//
//  AppDelegate.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "FirstPageViewController.h"
#import "HospitalRegisterViewController.h"
#import "ConsultViewController.h"
#import "FriendsViewController.h"
#import "AboutMyViewController.h"

@interface AppDelegate ()

@end

BMKMapManager* _mapManager;

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    LoginViewController *loginViewController = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    self.navigationController = [[UINavigationController alloc]initWithRootViewController:loginViewController];
    self.window.rootViewController = self.navigationController;
    
    [[UINavigationBar appearance] setBackgroundImage:[[UIImage imageNamed:@"green.jpg"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 0, 11, 0)] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTitleTextAttributes:@{UITextAttributeTextColor:[UIColor whiteColor],
                                                           UITextAttributeFont:[UIFont systemFontOfSize:19]}];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tab_background"]];
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tab_selected_background"]];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        [[UITabBar appearance] setSelectedImageTintColor:RGBACOLOR(0, 181, 255, 1.0)];
    }
    //[[UITabBarItem appearance] setTitleTextAttributes:@{UITextAttributeTextColor:RGBACOLOR(20, 153, 227, 1.0)} forState:UIControlStateSelected];
    [[UITableView appearance] setSectionIndexColor:RGBACOLOR(0, 181, 255, 1.0)];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        [[UITableView appearance] setSectionIndexBackgroundColor:[UIColor clearColor]];
    }
    
    // 要使用百度地图，请先启动BaiduMapManager
    _mapManager = [[BMKMapManager alloc]init];
    BOOL ret = [_mapManager start:@"bqM3gbKuMjZ0sb9WL10231QL" generalDelegate:self];
    if (!ret) {
        NSLog(@"manager start failed!");
    }
    
    //[[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"hospitalName"];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (UITabBarItem *)itemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage
{
    UITabBarItem *tabBarItem = nil;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >=7) {
        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];  //这两个地方一定要加上
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:image selectedImage:selectedImage];
        
    } else {
        tabBarItem = [[UITabBarItem alloc] init];
        [tabBarItem setFinishedSelectedImage:selectedImage withFinishedUnselectedImage:image];
    }
    return tabBarItem;
}

- (void)loginSuccessfulCompleteBlock:(void (^) (void))block
{
    [self fillViews:0];
}

- (void)fillViews:(NSInteger)i
{
    //根界面
    if (!_tabBar) {
        _tabBar = [[UITabBarController alloc] init];
    }
    
    float tabbarHeight = _tabBar.tabBar.frame.size.height - 17;
    UIImage *Image1_1 = [self reSizeImage:[UIImage imageNamed:@"tab_mainservice_gray"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UIImage *Image1_2 = [self reSizeImage:[UIImage imageNamed:@"tab_mainservice_blue"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UINavigationController *first = [[UINavigationController alloc] initWithRootViewController:[[FirstPageViewController alloc] initWithNibName:@"FirstPageViewController" bundle:nil]];
    first.tabBarItem = [self itemWithTitle:@"首页" image:Image1_1 selectedImage:Image1_2];
    
    UIImage *Image2_1 = [self reSizeImage:[UIImage imageNamed:@"tab_guahao_icon_gray"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UIImage *Image2_2 = [self reSizeImage:[UIImage imageNamed:@"tab_guahao_icon_blue"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UINavigationController *second = [[UINavigationController alloc] initWithRootViewController:[[HospitalRegisterViewController alloc] initWithNibName:@"HospitalRegisterViewController" bundle:nil]];
    second.tabBarItem = [self itemWithTitle:@"挂号" image:Image2_1 selectedImage:Image2_2];
    
    UIImage *Image3_1 = [self reSizeImage:[UIImage imageNamed:@"ask_white"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UIImage *Image3_2 = [self reSizeImage:[UIImage imageNamed:@"ask_blue"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UINavigationController *three = [[UINavigationController alloc] initWithRootViewController:[[ConsultViewController alloc] initWithNibName:@"ConsultViewController" bundle:nil]];
    three.tabBarItem = [self itemWithTitle:@"咨询" image:Image3_1 selectedImage:Image3_2];
    
    UIImage *Image4_1 = [self reSizeImage:[UIImage imageNamed:@"friend_gray"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UIImage *Image4_2 = [self reSizeImage:[UIImage imageNamed:@"friend_green"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UINavigationController *four = [[UINavigationController alloc] initWithRootViewController:[[FriendsViewController alloc] initWithNibName:@"FriendsViewController" bundle:nil]];
    four.tabBarItem = [self itemWithTitle:@"友圈" image:Image4_1 selectedImage:Image4_2];
    
    UIImage *Image5_1 = [self reSizeImage:[UIImage imageNamed:@"me_white"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UIImage *Image5_2 = [self reSizeImage:[UIImage imageNamed:@"me_blue"] toSize:CGSizeMake(tabbarHeight, tabbarHeight)];
    UINavigationController *five = [[UINavigationController alloc] initWithRootViewController:[[AboutMyViewController alloc] initWithNibName:@"AboutMyViewController" bundle:nil]];
    five.tabBarItem = [self itemWithTitle:@"我的" image:Image5_1 selectedImage:Image5_2];
    
    //[_tabBar.tabBarItem setImageInsets:UIEdgeInsetsMake(10, 0, -10, 0)];
    [_tabBar setViewControllers:@[first, second, three, four, five]];
    [_tabBar setSelectedIndex:i];
    [self.window setRootViewController:_tabBar];
    
}

- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize

{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return reSizeImage;
    
}

- (void)onGetNetworkState:(int)iError
{
    if (0 == iError) {
        NSLog(@"联网成功");
    }
    else{
        NSLog(@"onGetNetworkState %d",iError);
    }
    
}

- (void)onGetPermissionState:(int)iError
{
    if (0 == iError) {
        NSLog(@"授权成功");
    }
    else {
        NSLog(@"onGetPermissionState %d",iError);
    }
}



@end
