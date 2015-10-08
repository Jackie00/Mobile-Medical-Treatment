//
//  MedicalRecordViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/17.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "MedicalRecordViewController.h"
#import "MedicalRecord.h"
#import "MedicalRecordCell.h"
#import "PersonalRecordViewController.h"

@interface MedicalRecordViewController ()

{
    MedicalRecordCell *cell;
}

@end

@implementation MedicalRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"病历";
    
    MedicalRecord *record1 = [[MedicalRecord alloc]init];
    record1.doneOr = @"已确诊";
    record1.disease = @"下肢动脉硬化闭塞症";
    record1.date = @"2015-08-04";
    record1.doctor = @"王倩倩 教授 主任医师";
    
    MedicalRecord *record2 = [[MedicalRecord alloc]init];
    record2.doneOr = @"未确诊";
    record2.disease = @"下肢动脉硬化闭塞症";
    record2.date = @"2015-04-04";
    record2.doctor = @"李山 教授 主任医师";
    
    MedicalRecord *record3 = [[MedicalRecord alloc]init];
    record3.doneOr = @"已确诊";
    record3.disease = @"下肢动脉硬化闭塞症";
    record3.date = @"2015-01-02";
    record3.doctor = @"陈开冬 教授 主任医师";
    
    self.records = [[NSMutableArray alloc]initWithObjects:record1, record2, record3, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    
    self.tabBarController.tabBar.hidden = YES;
}

-(void)viewWillDisappear:(BOOL)animated {
    
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }
    else
    {
        return [self.records count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
    
        static NSString *CellIdentifier = @"Cell";
        UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
            cell1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell1.detailTextLabel.font = [UIFont systemFontOfSize:14];
        }
        
        cell1.textLabel.text = @"张三 男 32";
        cell1.detailTextLabel.text = @"无手术或外伤";
        
        return cell1;
        
    }
    else
    {
        static NSString *cellin = @"cell";
        
        cell = [tableView dequeueReusableCellWithIdentifier:cellin];
        if (cell == nil) {
            
            cell = [[NSBundle mainBundle] loadNibNamed:@"MedicalRecordCell" owner:self options:nil][0];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        
        MedicalRecord *item = [self.records objectAtIndex:indexPath.row];
        cell.doneOrLable.text = item.doneOr;
        cell.diseaseLable.text = item.disease;
        cell.dateLable.text = item.date;
        cell.doctorLable.text = item.doctor;
        
        return cell;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 70;
    }
    else
    {
        return 113;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    if (section == 1) {
        return  @"我的病历";
    }
    else
    {
        return @"我的健康档案";
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50.0f;
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    header.textLabel.textColor = [UIColor colorWithRed:46/255.0 green:139/255.0 blue:87/255.0 alpha:1.0];
    [header.textLabel setFont:[UIFont systemFontOfSize:19]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PersonalRecordViewController *personalRecordViewController = [[PersonalRecordViewController alloc]init];
    if (indexPath.section == 0) {
        [self.navigationController pushViewController:personalRecordViewController animated:YES];
    }
    
}

@end
