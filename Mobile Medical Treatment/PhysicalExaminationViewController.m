//
//  PhysicalExaminationViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "PhysicalExaminationViewController.h"

@interface PhysicalExaminationViewController ()
{
    PhysicalExaminationCell *cell;
}

@end

@implementation PhysicalExaminationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"检验报告";
    
    ExaminationReport *report1= [[ExaminationReport alloc]init];
    report1.reportTitle = @"北医三院检验报告单";
    report1.date = @"2015-08-09";
    report1.number = @"编号：10002010";
    report1.hospital = @"北医三院";
    report1.sex = @"男";
    report1.age = @"29岁";
    report1.detail = @"1、肝囊肿\n2、单核细胞比率降低\n3、低密度脂蛋白质胆固醇降低\n4、血压增高";
    
    ExaminationReport *report2= [[ExaminationReport alloc]init];
    report2.reportTitle = @"北京302医院检验报告单";
    report2.date = @"2014-09-11";
    report2.number = @"编号：10002011";
    report2.hospital = @"北京302医院";
    report2.sex = @"男";
    report2.age = @"29岁";
    report2.detail = @"1、肝囊肿\n2、单核细胞比率降低\n3、低密度脂蛋白质胆固醇降低\n4、血压增高";
    
    ExaminationReport *report3= [[ExaminationReport alloc]init];
    report3.reportTitle = @"北京301医院检验报告单";
    report3.date = @"2014-12-11";
    report3.number = @"编号：10002013";
    report3.hospital = @"北京301医院";
    report3.sex = @"女";
    report3.age = @"39岁";
    report3.detail = @"1、肝囊肿\n2、单核细胞比率降低\n3、低密度脂蛋白质胆固醇降低\n4、血压增高";
    
    _reports = [NSMutableArray arrayWithObjects:report1, report2, report3, nil];
    
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _reports.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellin = @"cell";
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellin];
    if (cell == nil) {
        
        cell = [[NSBundle mainBundle] loadNibNamed:@"PhysicalExaminationCell" owner:self options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    ExaminationReport *item = [_reports objectAtIndex:indexPath.section];
    
    cell.reportTitleLable.text = item.reportTitle;
    cell.dateLable.text = item.date;
    cell.numberLable.text = item.number;
    cell.hospitalLable.text = item.hospital;
    cell.sexLabel.text = item.sex;
    cell.ageLable.text = item.age;
    //cell.detailLable.text = item.detail;
    cell.detailTextView.text = item.detail;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"\n";
}

@end
