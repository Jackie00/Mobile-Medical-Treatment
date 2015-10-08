//
//  Hospital.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Hospital : NSObject
@property (strong, nonatomic) NSString *hospitalName;
@property (strong, nonatomic) NSString *level;
@property (strong, nonatomic) NSString *registNumber;
@property (strong, nonatomic) NSString *judgeNumber;
@property (strong, nonatomic) UIImage *image;

@end
