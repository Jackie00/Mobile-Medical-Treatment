//
//  ConsultDoctorViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/17.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "ConsultDoctorViewController.h"
#import "ConsultDoctor.h"
#import "ConsultDoctorCell.h"
#import "ConsultDoctorDetailViewController.h"

@interface ConsultDoctorViewController ()
{
    ConsultDoctorCell *cell;
}

@end

@implementation ConsultDoctorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"医生";
    
    ConsultDoctor *doctor1 = [[ConsultDoctor alloc]init];
    doctor1.name = @"邓珊";
    doctor1.office = @"内科";
    doctor1.post = @"主任医师";
    doctor1.hospital = @"中国人民解放军总医院";
    
    ConsultDoctor *doctor2 = [[ConsultDoctor alloc]init];
    doctor2.name = @"李芳";
    doctor2.office = @"内科";
    doctor2.post = @"主任医师";
    doctor2.hospital = @"中国人民解放军总医院";
    
    ConsultDoctor *doctor3 = [[ConsultDoctor alloc]init];
    doctor3.name = @"刘卫华";
    doctor3.office = @"内科";
    doctor3.post = @"主任医师";
    doctor3.hospital = @"中国人民解放军总医院";
    
    ConsultDoctor *doctor4 = [[ConsultDoctor alloc]init];
    doctor4.name = @"左丽珊";
    doctor4.office = @"内科";
    doctor4.post = @"主任医师";
    doctor4.hospital = @"中国人民解放军总医院";
    
    ConsultDoctor *doctor5 = [[ConsultDoctor alloc]init];
    doctor5.name = @"赵荣";
    doctor5.office = @"内科";
    doctor5.post = @"主任医师";
    doctor5.hospital = @"中国人民解放军总医院";
    
    ConsultDoctor *doctor6 = [[ConsultDoctor alloc]init];
    doctor6.name = @"谷雨";
    doctor6.office = @"内科";
    doctor6.post = @"主任医师";
    doctor6.hospital = @"中国人民解放军总医院";
    
    ConsultDoctor *doctor7 = [[ConsultDoctor alloc]init];
     doctor7.name = @"李凌云";
    doctor7.office = @"内科";
    doctor7.post = @"主任医师";
    doctor7.hospital = @"中国人民解放军总医院";
    
    ConsultDoctor *doctor8 = [[ConsultDoctor alloc]init];
    doctor8.name = @"王德福";
    doctor8.office = @"内科";
    doctor8.post = @"主任医师";
    doctor8.hospital = @"中国人民解放军总医院";
    
    self.doctors = [[NSMutableArray alloc]initWithObjects:doctor1, doctor2, doctor3, doctor4, doctor5, doctor6, doctor7, doctor8, nil];
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
    return [self.doctors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellin = @"cell";
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellin];
    if (cell == nil) {
        
        cell = [[NSBundle mainBundle] loadNibNamed:@"ConsultDoctorCell" owner:self options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    ConsultDoctor *item = [self.doctors objectAtIndex:indexPath.row];
    
    cell.nameLable.text = item.name;
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ConsultDoctorDetailViewController *consultDoctorDetailViewController = [[ConsultDoctorDetailViewController alloc]init];
    consultDoctorDetailViewController.doctor = [self.doctors objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:consultDoctorDetailViewController animated:YES];
}

@end
