//
//  NewRemindViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/10.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewRemindViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
