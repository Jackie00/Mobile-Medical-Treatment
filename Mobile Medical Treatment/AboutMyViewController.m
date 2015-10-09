//
//  AboutMyViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "AboutMyViewController.h"
#import "FunctionType.h"
#import "FirstPageViewController.h"
#import "ChangePasswordViewController.h"
#import "NewRemindViewController.h"
#import "LoginViewController.h"
#import "AppDelegate.h"

@interface AboutMyViewController ()

@end

@implementation AboutMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = YES;
    
    self.title = @"返回";
    
    FunctionType *type1 = [[FunctionType alloc]init];
    type1.name = @"健康二维码";
    type1.image = [FirstPageViewController scale:[UIImage imageNamed:@"erweima"] toSize:CGSizeMake(30, 30)];
    
    FunctionType *type2 = [[FunctionType alloc]init];
    type2.name = @"健康管家";
    type2.image = [FirstPageViewController scale:[UIImage imageNamed:@"group_chat_icon"] toSize:CGSizeMake(30, 30)];
    
    FunctionType *type3 = [[FunctionType alloc]init];
    type3.name = @"家人健康";
    type3.image = [FirstPageViewController scale:[UIImage imageNamed:@"vedio_green"] toSize:CGSizeMake(30, 30)];
    
    FunctionType *type4 = [[FunctionType alloc]init];
    type4.name = @"更改密码";
    type4.image = [FirstPageViewController scale:[UIImage imageNamed:@"account_security"] toSize:CGSizeMake(30, 30)];
    
    FunctionType *type5 = [[FunctionType alloc]init];
    type5.name = @"新消息通知";
    type5.image = [FirstPageViewController scale:[UIImage imageNamed:@"noti_news"] toSize:CGSizeMake(30, 30)];
    
    FunctionType *type6 = [[FunctionType alloc]init];
    type6.name = @"关于";
    type6.image = [FirstPageViewController scale:[UIImage imageNamed:@"about"] toSize:CGSizeMake(30, 30)];
    self.types = [NSMutableArray arrayWithObjects: type1, type2, type3, type4, type5, type6, nil];
    

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    self.navigationController.navigationBarHidden = NO;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.types.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.font = [UIFont systemFontOfSize:16];
    }
    FunctionType *item = [self.types objectAtIndex:indexPath.row];
    cell.textLabel.text = item.name;
    cell.imageView.image = item.image;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ChangePasswordViewController *changePasswordViewController = [[ChangePasswordViewController alloc]initWithNibName:@"ChangePasswordViewController" bundle:nil];
    NewRemindViewController *newRemindViewController = [[NewRemindViewController alloc]initWithNibName:@"NewRemindViewController" bundle:nil];
   
    switch (indexPath.row) {
        case 0:
            
            break;
        case 3:
            [self.navigationController pushViewController:changePasswordViewController animated:YES];
            break;
        case 4:
            [self.navigationController pushViewController:newRemindViewController animated:YES];
            break;
            
        default:
            break;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)quitApp:(id)sender {
     LoginViewController *loginViewController = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.navigationController = [[UINavigationController alloc]initWithRootViewController:loginViewController];
    [(UIWindow*)([[UIApplication sharedApplication].windows objectAtIndex:0]) setRootViewController:delegate.navigationController];

}
@end
