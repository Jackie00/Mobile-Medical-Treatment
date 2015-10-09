//
//  MyAppointmentTableViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "MyAppointmentTableViewController.h"
#import "MyAppointmentTableViewCell.h"
#import "Appointment.h"

@interface MyAppointmentTableViewController ()

{
    MyAppointmentTableViewCell *cell;
}

@end

@implementation MyAppointmentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"预约挂号";

    
    Appointment *appointment1 = [[Appointment alloc]init];
    appointment1.time = @"2015-3-4";
    appointment1.name = @"名一";
    appointment1.post = @"主任医师";
    appointment1.office = @"内科";
    appointment1.hospital = @"北医三院";
    appointment1.image = [UIImage imageNamed:@"default_icon"];
    
    Appointment *appointment2 = [[Appointment alloc]init];
    appointment2.time = @"2015-5-9";
    appointment2.name = @"名二";
    appointment2.post = @"主任医师";
    appointment2.office = @"内科";
    appointment2.hospital = @"北医三院";
    appointment2.image = [UIImage imageNamed:@"default_icon"];
    
    Appointment *appointment3 = [[Appointment alloc]init];
    appointment3.time = @"2015-6-4";
    appointment3.name = @"名三";
    appointment3.post = @"主任医师";
    appointment3.office = @"内科";
    appointment3.hospital = @"北医三院";
    appointment3.image = [UIImage imageNamed:@"default_icon"];
    
    _appointments = [NSMutableArray arrayWithObjects:appointment1, appointment2, appointment3, nil];
    
    _lable.text = [[NSString alloc]initWithFormat:@"你已经预约了%d名医生",[_appointments count]];
    
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
    return _appointments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellin = @"cell";
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellin];
    if (cell == nil) {
        
        cell = [[NSBundle mainBundle] loadNibNamed:@"MyAppointmentTableViewCell" owner:self options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    Appointment *item = [_appointments objectAtIndex:indexPath.row];
    
    cell.time.text = item.time;
    cell.name.text = item.name;
    cell.post.text = item.post;
    cell.office.text = item.office;
    cell.hospital.text = item.hospital;
    //cell.image.image = [MyAppointmentTableViewCell scale:item.image toSize:CGSizeMake(25, 25)];
    
    
    return cell;
}

@end
