//
//  MedicalRecordCell.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/18.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MedicalRecordCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *doneOrLable;
@property (weak, nonatomic) IBOutlet UILabel *diseaseLable;
@property (weak, nonatomic) IBOutlet UILabel *dateLable;
@property (weak, nonatomic) IBOutlet UILabel *doctorLable;

@end
