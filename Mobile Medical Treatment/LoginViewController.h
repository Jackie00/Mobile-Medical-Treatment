//
//  LoginViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface LoginViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *accountTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)changeToRegisteView:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
- (IBAction)login:(id)sender;


@end
