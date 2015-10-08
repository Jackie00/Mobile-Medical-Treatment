//
//  RegistViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "RegistViewController.h"

@interface RegistViewController ()

@end

@implementation RegistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"注册";
    self.navigationItem.leftBarButtonItem.title = @"返回";
    
    UIButton *registButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 250, [UIScreen mainScreen].bounds.size.width - 40, 40)];
    [registButton addTarget:self action:@selector(regist:) forControlEvents:UIControlEventTouchUpInside];
    [registButton setTitle:@"注册" forState:UIControlStateNormal];
    registButton.backgroundColor = [UIColor orangeColor];
    [registButton.layer setCornerRadius:5.0];
    [registButton.layer setMasksToBounds:YES];
    [registButton.layer setBorderWidth:1.0];
    [registButton.layer setBorderColor:[UIColor orangeColor].CGColor];
    [self.view addSubview:registButton];
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

- (void)regist: (id)sender
{
    
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
