//
//  ConsultViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "ConsultViewController.h"
#import "ConsultDoctorViewController.h"

@interface ConsultViewController ()

@end

@implementation ConsultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"咨询";
    
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image1 addGestureRecognizer:singleTap1];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image2 addGestureRecognizer:singleTap2];
    UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image3 addGestureRecognizer:singleTap3];
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image4 addGestureRecognizer:singleTap4];
    UITapGestureRecognizer *singleTap5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image5 addGestureRecognizer:singleTap5];
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image6 addGestureRecognizer:singleTap6];
    UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image7 addGestureRecognizer:singleTap7];
    UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image8 addGestureRecognizer:singleTap8];
    UITapGestureRecognizer *singleTap9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image9 addGestureRecognizer:singleTap9];
    UITapGestureRecognizer *singleTap10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image10 addGestureRecognizer:singleTap10];
    UITapGestureRecognizer *singleTap11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image11 addGestureRecognizer:singleTap11];
    UITapGestureRecognizer *singleTap12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image12 addGestureRecognizer:singleTap12];
    UITapGestureRecognizer *singleTap13 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image13 addGestureRecognizer:singleTap13];
    UITapGestureRecognizer *singleTap14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image14 addGestureRecognizer:singleTap14];
    UITapGestureRecognizer *singleTap15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image15 addGestureRecognizer:singleTap15];
    UITapGestureRecognizer *singleTap16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image16 addGestureRecognizer:singleTap16];
    UITapGestureRecognizer *singleTap17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image17 addGestureRecognizer:singleTap17];
    UITapGestureRecognizer *singleTap18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewAction:)];
    [_image18 addGestureRecognizer:singleTap18];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)imageViewAction:(id)sender
{
    ConsultDoctorViewController *consultDoctorViewController = [[ConsultDoctorViewController alloc]initWithNibName:@"ConsultDoctorViewController" bundle:nil];
    [self.navigationController pushViewController:consultDoctorViewController animated:YES];
//    if ([sender isEqual:_image1]) {
//        
//    }
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
