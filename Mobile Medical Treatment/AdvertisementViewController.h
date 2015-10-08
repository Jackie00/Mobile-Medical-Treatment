//
//  AdvertisementViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/9.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdvertisementViewController : UIViewController

@property (strong, nonatomic) NSString *navTitle;
@property (strong, nonatomic) NSURL *url;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
