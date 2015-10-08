//
//  ChangePasswordViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/10.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "ChangePasswordViewController.h"

@interface ChangePasswordViewController ()

@end

@implementation ChangePasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"修改密码";
    
    _view1.layer.borderWidth = 0.3;
    _view1.layer.borderColor = [UIColor colorWithRed:121/255.0 green:121/255.0 blue:121/255.0 alpha:0.8].CGColor;
    _view3.layer.borderWidth = 0.3;
    _view3.layer.borderColor = [UIColor colorWithRed:121/255.0 green:121/255.0 blue:121/255.0 alpha:0.8].CGColor;
    
    _button.layer.cornerRadius = 5.0;
    _button.layer.borderWidth = 1.0;
    _button.layer.borderColor = [UIColor orangeColor].CGColor;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *) textField {
    [textField resignFirstResponder];
    
    return true;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
