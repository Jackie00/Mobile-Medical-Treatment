//
//  RegistDoctorCell.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/16.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistDoctorCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *doctorImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@property (weak, nonatomic) IBOutlet UILabel *officeLable;
@property (weak, nonatomic) IBOutlet UILabel *gradeLable;
@property (weak, nonatomic) IBOutlet UILabel *numberLable;
@property (weak, nonatomic) IBOutlet UILabel *doctorDetailLable;

@end
