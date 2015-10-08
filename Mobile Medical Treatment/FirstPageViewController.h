//
//  FirstPageViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FunctionType.h"

@interface FirstPageViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    BOOL isFromStart;
}

@property (strong, nonatomic) NSMutableArray *functionType;
@property (weak, nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (strong, nonatomic)NSTimer *timer;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;
@property (weak, nonatomic) IBOutlet UIView *view5;
@property (weak, nonatomic) IBOutlet UIView *view6;
@property (weak, nonatomic) IBOutlet UIView *view7;
@property (weak, nonatomic) IBOutlet UIView *view8;
@property (weak, nonatomic) IBOutlet UIView *view9;
- (IBAction)view1Action:(id)sender;
- (IBAction)view2Action:(id)sender;
- (IBAction)view3Action:(id)sender;
- (IBAction)view4Action:(id)sender;
- (IBAction)view5Action:(id)sender;
- (IBAction)view6Action:(id)sender;

+ (UIImage *)scale:(UIImage *)image toSize:(CGSize)size;

@end
