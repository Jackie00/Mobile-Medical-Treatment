//
//  NewRemindViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/10.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "NewRemindViewController.h"

@interface NewRemindViewController ()

@end

@implementation NewRemindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
        cell.textLabel.font = [UIFont systemFontOfSize:16];
        
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"声音";
        UISwitch * switchView =  [[UISwitch alloc]initWithFrame:CGRectMake(0, 0, 80, 20)];
        [switchView addTarget:self action:@selector(setSound:) forControlEvents:UIControlEventValueChanged];
        [switchView setOn:YES animated:YES];
        //objc_setAssociatedObject(switchView, "digit", @7, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        cell.accessoryView = switchView;
    }
    else
    {
        cell.textLabel.text = @"震动";
        UISwitch * switchView =  [[UISwitch alloc]initWithFrame:CGRectMake(0, 0, 80, 20)];
        [switchView addTarget:self action:@selector(setShake:) forControlEvents:UIControlEventValueChanged];
        [switchView setOn:YES animated:YES];
        //objc_setAssociatedObject(switchView, "digit", @7, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        cell.accessoryView = switchView;
    }
    
    
    return cell;
}

- (void)setSound:(id)sender
{
    
}

- (void)setShake:(id)sender
{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
