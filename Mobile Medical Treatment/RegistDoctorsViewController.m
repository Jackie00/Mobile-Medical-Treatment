//
//  RegistDoctorsViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/16.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "RegistDoctorsViewController.h"
#import "RegistDoctor.h"
#import "RegistDoctorCell.h"

@interface RegistDoctorsViewController ()
{
    RegistDoctorCell *cell;
}

@end

@implementation RegistDoctorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"挂号";
    
    RegistDoctor *doctor1 = [[RegistDoctor alloc]init];
    doctor1.name = @"邓珊";
    doctor1.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor2 = [[RegistDoctor alloc]init];
    doctor2.name = @"李芳";
    doctor2.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor3 = [[RegistDoctor alloc]init];
    doctor3.name = @"刘卫华";
    doctor3.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor4 = [[RegistDoctor alloc]init];
    doctor4.name = @"左丽珊";
    doctor4.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor5 = [[RegistDoctor alloc]init];
    doctor5.name = @"赵荣";
    doctor5.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor6 = [[RegistDoctor alloc]init];
    doctor6.name = @"谷雨";
    doctor6.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor7 = [[RegistDoctor alloc]init];
    doctor7.name = @"李凌云";
    doctor7.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor8 = [[RegistDoctor alloc]init];
    doctor8.name = @"王德福";
    doctor8.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    RegistDoctor *doctor9 = [[RegistDoctor alloc]init];
    doctor9.name = @"梁凤仪";
    doctor9.doctorDetail = @"心血管常见病，各种疑难杂症";
    
    self.registDoctors = [[NSMutableArray alloc]initWithObjects:doctor1, doctor2, doctor3, doctor4, doctor5, doctor6, doctor7, doctor8, doctor9, nil];
    
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.registDoctors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellin = @"cell";
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellin];
    if (cell == nil) {
        
        cell = [[NSBundle mainBundle] loadNibNamed:@"RegistDoctorCell" owner:self options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    RegistDoctor *item = [_registDoctors objectAtIndex:indexPath.row];
    
    cell.nameLable.text = item.name;
    cell.doctorDetailLable.text = item.doctorDetail;
    
    
    return cell;
}

@end
