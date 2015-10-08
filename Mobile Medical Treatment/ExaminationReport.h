//
//  ExaminationReport.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ExaminationReport : NSObject

@property (strong, nonatomic) NSString *reportTitle;
@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) NSString *number;
@property (strong, nonatomic) NSString *hospital;
@property (strong, nonatomic) NSString *sex;
@property (strong, nonatomic) NSString *age;
@property (strong, nonatomic) NSString *detail;
@property (strong, nonatomic) UIImage *image;

@end
