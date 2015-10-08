//
//  AdvertisementViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/9.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "AdvertisementViewController.h"

@interface AdvertisementViewController ()

@end

@implementation AdvertisementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = _navTitle;
    NSURLRequest *request =[NSURLRequest requestWithURL:_url];
    [_webView loadRequest:request];
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

@end
