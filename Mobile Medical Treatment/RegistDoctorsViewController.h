//
//  RegistDoctorsViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/16.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistDoctorsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *registDoctors;

@end
