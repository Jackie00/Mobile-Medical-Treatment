//
//  ConsultDoctorDetailViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/21.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConsultDoctor.h"

@interface ConsultDoctorDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *doctorName;
@property (weak, nonatomic) IBOutlet UILabel *officeLabel;
@property (weak, nonatomic) IBOutlet UILabel *postLabel;
@property (weak, nonatomic) IBOutlet UILabel *hostipalLabel;
@property (weak, nonatomic) IBOutlet UIButton *guanzhuButton;
@property (weak, nonatomic) IBOutlet UIButton *songxinyiButton;
@property (weak, nonatomic) IBOutlet UIImageView *tuwenImageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) ConsultDoctor *doctor;

@end
