//
//  MyAppointmentTableViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyAppointmentTableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *appointments;
@property (weak, nonatomic) IBOutlet UILabel *lable;

@end
