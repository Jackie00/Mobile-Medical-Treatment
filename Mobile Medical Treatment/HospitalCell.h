//
//  HospitalCell.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HospitalCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *hospitalLable;
@property (weak, nonatomic) IBOutlet UILabel *levelLable;
@property (weak, nonatomic) IBOutlet UILabel *numberLable;
@property (weak, nonatomic) IBOutlet UILabel *judgeLable;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
