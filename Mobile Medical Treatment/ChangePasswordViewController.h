//
//  ChangePasswordViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/10.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChangePasswordViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UITextField *oldPswd;
@property (weak, nonatomic) IBOutlet UITextField *nPswd;
@property (weak, nonatomic) IBOutlet UITextField *n2Pswd;
@property (weak, nonatomic) IBOutlet UIButton *button;


@end
