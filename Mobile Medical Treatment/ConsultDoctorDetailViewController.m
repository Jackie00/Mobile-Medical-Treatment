//
//  ConsultDoctorDetailViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/21.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "ConsultDoctorDetailViewController.h"

@interface ConsultDoctorDetailViewController ()

@end

@implementation ConsultDoctorDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"医生详情";
    
    self.doctorName.text = _doctor.name;
    self.officeLabel.text = _doctor.office;
    self.postLabel.text = _doctor.post;
    self.hostipalLabel.text = _doctor.hospital;
    
    self.guanzhuButton.layer.borderColor = [UIColor greenColor].CGColor;
    self.guanzhuButton.layer.borderWidth = 1.0;
    self.songxinyiButton.layer.borderColor = [UIColor redColor].CGColor;
    self.songxinyiButton.layer.borderWidth = 1.0;
    
    [_scrollView setContentSize:CGSizeMake(_scrollView.frame.size.width, self.view.frame.size.height )];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    
    self.tabBarController.tabBar.hidden = YES;
}

-(void)viewWillDisappear:(BOOL)animated {
    
    self.tabBarController.tabBar.hidden = NO;
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
