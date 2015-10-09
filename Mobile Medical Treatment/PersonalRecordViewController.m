//
//  PersonalRecordViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/18.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "PersonalRecordViewController.h"
#import "PersonalRecordCell.h"

@interface PersonalRecordViewController ()

{
    PersonalRecordCell *cell;
}

@end

@implementation PersonalRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"我的健康档案";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    self.tabBarController.tabBar.hidden = YES;
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    self.tabBarController.tabBar.hidden = NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"PersonalRecordCell" owner:self options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    switch (indexPath.row) {
        case 0:
            cell.lable1.text = @"基本信息";
            cell.lable2.text = @"张三 男 32岁";
            break;
            case 1:
            cell.lable1.text = @"婚育史";
            cell.lable2.text = @"未婚 未生育";
            break;
        case 2:
            cell.lable1.text = @"外伤和手术";
            cell.lable2.text = @"无手术或外伤";
            break;
        case 3:
            cell.lable1.text = @"家族病史";
            cell.lable2.text = @"无家族病史";
            break;
        case 4:
            cell.lable1.text = @"药物过敏";
            cell.lable2.text = @"无药物过敏";
            break;
        case 5:
            cell.lable1.text = @"个人习惯";
            cell.lable2.text = @"低头族、久坐";
            break;
            
        default:
            break;
    }
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
