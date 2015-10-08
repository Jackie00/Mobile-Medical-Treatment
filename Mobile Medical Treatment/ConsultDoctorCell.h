//
//  ConsultDoctorCell.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/17.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsultDoctorCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@property (weak, nonatomic) IBOutlet UILabel *officeLable;
@property (weak, nonatomic) IBOutlet UILabel *postLable;
@property (weak, nonatomic) IBOutlet UILabel *hospitalLable;
@property (weak, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *numberLable;

@end
