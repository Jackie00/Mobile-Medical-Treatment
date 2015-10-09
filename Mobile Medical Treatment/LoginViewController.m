//
//  LoginViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "LoginViewController.h"
#import "RegistViewController.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    _loginButton.backgroundColor = [UIColor orangeColor];
    [_loginButton.layer setCornerRadius:4.0];
    [_loginButton.layer setMasksToBounds:YES];
    [_loginButton.layer setBorderWidth:1.0];
    [_loginButton.layer setBorderColor:[UIColor orangeColor].CGColor];
    
    
    UIImageView *accountImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"login_account.png"]];
    accountImageView.frame = CGRectMake(0, 0, 30, 30);
    self.accountTextField.leftView = accountImageView;
    self.accountTextField.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView *passwordImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"psw1.png"]];
    passwordImageView.frame = CGRectMake(0, 0, 30, 30);
    self.passwordTextField.leftView = passwordImageView;
    self.passwordTextField.leftViewMode = UITextFieldViewModeAlways;
    
    self.navigationController.navigationBarHidden = YES;
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden = YES;
}

//- (void)keyboardHide:(UITapGestureRecognizer *)tap
//{
//    [self.view endEditing:YES];
//}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *) textField {
    [textField resignFirstResponder];
    
    return true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)changeToRegisteView:(id)sender {
    RegistViewController *registViewController = [[RegistViewController alloc]initWithNibName:@"RegistViewController" bundle:nil];
    [self.navigationController pushViewController:registViewController animated:YES];
}
- (IBAction)login:(id)sender {

        [(AppDelegate *)[UIApplication sharedApplication].delegate loginSuccessfulCompleteBlock:^{
                
            
        }];
    
}


@end
