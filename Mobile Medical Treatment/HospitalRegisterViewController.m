//
//  HospitalRegisterViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "HospitalRegisterViewController.h"
#import "FunctionType.h"
#import "FirstPageViewController.h"
#import "OfficeChoiceViewController.h"


@interface HospitalRegisterViewController ()

{
    NSString *hospitalName;
}

@end

@implementation HospitalRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"挂号";
    //_hospitalName = @"请选择医院";
    
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"hospitalName"];
    _button.layer.cornerRadius = 5.0;
    _button.layer.borderWidth = 1.0;
    _button.layer.borderColor = _button.backgroundColor.CGColor;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [_tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.font = [UIFont systemFontOfSize:16.0];
        cell.textLabel.textColor = [UIColor grayColor];
    }
    
//    FunctionType *item = [self.functionType objectAtIndex:indexPath.row];
//    cell.textLabel.text = item.name;
//    cell.imageView.image = [FirstPageViewController scale:item.image toSize:CGSizeMake(30, 45)];
    
    if (indexPath.row == 0) {
        hospitalName = [[NSUserDefaults standardUserDefaults] objectForKey:@"hospitalName"];
        if (hospitalName == nil) {
            hospitalName = @"请选择医院";
        }
        
        cell.textLabel.text = hospitalName;
        cell.imageView.image = [FirstPageViewController scale:[UIImage imageNamed:@"guahao_yiyuan_icon"] toSize:CGSizeMake(30, 45)];
    }
    else
    {
        cell.textLabel.text = @"请选择科室";
        cell.imageView.image = [FirstPageViewController scale:[UIImage imageNamed:@"guahao_keshi_icon"] toSize:CGSizeMake(30, 45)];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    HospitalChoiceViewController *hospitalChoiceViewController = [[HospitalChoiceViewController alloc]initWithNibName:@"HospitalChoiceViewController" bundle:nil];
    OfficeChoiceViewController *officeChoiceViewController = [[OfficeChoiceViewController alloc]initWithNibName:@"OfficeChoiceViewController" bundle:nil];
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:hospitalChoiceViewController animated:YES];
    }
    else
    {
        [self.navigationController pushViewController:officeChoiceViewController animated:YES];
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

- (IBAction)goToRegister:(id)sender {
}
@end
