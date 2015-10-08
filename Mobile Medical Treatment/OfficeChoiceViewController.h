//
//  OfficeChoiceViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/15.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OfficeChoiceViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView1;
@property (weak, nonatomic) IBOutlet UITableView *tableView2;

@property (strong, nonatomic) NSMutableArray *office;
@property (strong, nonatomic) NSMutableArray *officeDetail;

@end
