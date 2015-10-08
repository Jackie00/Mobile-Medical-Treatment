//
//  OfficeChoiceViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/15.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "OfficeChoiceViewController.h"
#import "RegistDoctorsViewController.h"

@interface OfficeChoiceViewController ()
{
    NSInteger detailIndex;
}

@end

@implementation OfficeChoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"科室";
    
    self.office = [NSMutableArray arrayWithObjects:@"内科", @"外科", @"妇产科", @"儿科", @"感染科", @"中医科", @"神经内科", @"急诊内科", @"急诊外科", @"肿瘤科", @"耳鼻喉-头颈外科", @"眼科", @"口腔科", @"放射科", nil];
    self.officeDetail = [NSMutableArray arrayWithObjects:@[@"心血管内科", @"消化内科", @"呼吸内科", @"血液内科", @"内分泌内科", @"肾病内科"], @[@"普通外科", @"神经外科", @"小儿外科", @"骨科", @"泌尿外科", @"胸外科", @"胆胰外科", @"肠胃外科"], @[@"妇科", @"生殖医学科"], @[@"儿科"], @[@"感染科肝病", @"肝病感染发热"], @[@"中西医结合科", @"中医妇科", @"中医内分泌"], @[@"神经内科", @"焦虑抑郁专科", @"心神障碍专科", @"心理咨询", @"精神障碍"], @[@"急诊心血管", @"急诊呼吸"], @[@"创伤外科", @"创伤外科伤口修复", @"运动损伤"], @[@"肿瘤科"], @[@"耳鼻喉-头颈外科", @"鼻科"], @[@"眼科"], @[@"口腔科"], @[@"放射介入"], nil];
    
    _tableView1.tag = 220;
    _tableView2.tag = 221;
    
    detailIndex = 0;
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
    if (tableView.tag == 220) {
        return [self.office count];
    }
    else
    {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        array = [self.officeDetail objectAtIndex:detailIndex];
        return [array count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if (tableView.tag == 220) {
        cell.textLabel.text = [self.office objectAtIndex:indexPath.row];
         [cell.contentView setBackgroundColor: [UIColor lightGrayColor] ];
    }
    else
    {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        array = [self.officeDetail objectAtIndex:detailIndex];
        cell.textLabel.text = [array objectAtIndex:indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    RegistDoctorsViewController *registDoctorsViewController = [[RegistDoctorsViewController alloc]initWithNibName:@"RegistDoctorsViewController" bundle:nil];
    if (tableView.tag == 220) {
        detailIndex = indexPath.row;
        [_tableView2 reloadData];
    }
    else
    {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        [self.navigationController pushViewController:registDoctorsViewController animated:YES];
    }
    
}

@end
