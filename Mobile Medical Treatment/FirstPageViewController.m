//
//  FirstPageViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/6.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "FirstPageViewController.h"
#import "AdvertisementViewController.h"
#import "AppDelegate.h"
#import "NearbyHospitalViewController.h"
#import "MyAppointmentTableViewController.h"
#import "PhysicalExaminationViewController.h"
#import "MedicalRecordViewController.h"

@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"一点就医";
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithImage:[FirstPageViewController scale:[UIImage imageNamed:@"message_white_icon"] toSize:CGSizeMake(23, 23)] style:UIBarButtonItemStylePlain target:self action:@selector(changeToMessageTable:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithImage:[FirstPageViewController scale:[UIImage imageNamed:@"scan_white_icon"] toSize:CGSizeMake(22, 22)] style:UIBarButtonItemStylePlain target:self action:@selector(scanQR:)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    FunctionType *type1 = [[FunctionType alloc]init];
    type1.name = @"预约挂号";
    type1.detail = @"预约指定医生";
    type1.image = [UIImage imageNamed:@"yuyueguahao"];
    
    FunctionType *type2 = [[FunctionType alloc]init];
    type2.name = @"急诊通道";
    type2.detail = @"快速附近就医";
    type2.image = [UIImage imageNamed:@"jizhentongdao"];
    
    FunctionType *type3 = [[FunctionType alloc]init];
    type3.name = @"医生咨询";
    type3.detail = @"咨询指定医生";
    type3.image = [UIImage imageNamed:@"yishengzixun"];
    
    self.functionType = [NSMutableArray arrayWithObjects:type1, type2, type3, nil];
    
    [_scrollView setContentSize:CGSizeMake(6*_scrollView.frame.size.width, _scrollView.frame.size.height )];
    [self showGuide];
    
    _pageControl.numberOfPages = 6;
    _pageControl.currentPage = 0;
    [_pageControl addTarget:self action:@selector(pageTurn:) forControlEvents:UIControlEventValueChanged];
    _pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    _pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    
    _scrollView.layer.borderColor = [UIColor grayColor].CGColor;
    _scrollView.layer.borderWidth = 0.5;
    
    
//   NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(scrollPages) userInfo:nil repeats:YES];
//    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    
    
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view1Action:)];
    [_view1 addGestureRecognizer:singleTap1];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view2Action:)];
    [_view2 addGestureRecognizer:singleTap2];
    UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view3Action:)];
    [_view3 addGestureRecognizer:singleTap3];
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view4Action:)];
    [_view4 addGestureRecognizer:singleTap4];
    UITapGestureRecognizer *singleTap5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view5Action:)];
    [_view5 addGestureRecognizer:singleTap5];
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view6Action:)];
    [_view6 addGestureRecognizer:singleTap6];
    UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view7Action:)];
    [_view7 addGestureRecognizer:singleTap7];
    UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view8Action:)];
    [_view8 addGestureRecognizer:singleTap8];
    UITapGestureRecognizer *singleTap9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(view9Action:)];
    [_view9 addGestureRecognizer:singleTap9];
    
    [_mainScrollView setContentSize:CGSizeMake(_mainScrollView.frame.size.width, self.view.frame.size.height )];
}


- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [_timer invalidate];
}
-(void) showGuide
{
    NSArray *arry = [NSArray arrayWithObjects:[FirstPageViewController scale:[UIImage imageNamed:@"fire1.jpg"] toSize:_scrollView.frame.size],[FirstPageViewController scale:[UIImage imageNamed:@"fire2.jpg"] toSize:_scrollView.frame.size],[FirstPageViewController scale:[UIImage imageNamed:@"fire3.jpg"] toSize:_scrollView.frame.size],[FirstPageViewController scale:[UIImage imageNamed:@"fire4.png"] toSize:_scrollView.frame.size],[FirstPageViewController scale:[UIImage imageNamed:@"fire1.jpg"] toSize:_scrollView.frame.size],[FirstPageViewController scale:[UIImage imageNamed:@"fire2.jpg"] toSize:_scrollView.frame.size], nil];
    
    //为每一页添加图片
    for (int i=0; i<[arry count]; i++) {
        UIButton *imageButton = [[UIButton alloc]initWithFrame:(CGRect){i * _scrollView.frame.size.width, 0, _scrollView.frame.size}];
        [imageButton setBackgroundImage:arry[i] forState:UIControlStateNormal];
        [_scrollView addSubview:imageButton];
        [imageButton addTarget:self action:@selector(advertisementAction:) forControlEvents:UIControlEventTouchUpInside];
        imageButton.tag = 200+i;
        
//        UIImageView *imageView = [[UIImageView alloc] initWithFrame:(CGRect){i * _scrollView.frame.size.width, 0, _scrollView.frame.size}];
//        [imageView setContentMode:UIViewContentModeScaleAspectFill];
//        imageView.image = arry[i];
//        [_scrollView addSubview:imageView];
    }
    
    
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //更新UIPageControl的当前页
    CGPoint offset = scrollView.contentOffset;
    CGRect bounds = scrollView.frame;
    [_pageControl setCurrentPage:offset.x / bounds.size.width];
    
}

-(void)scrollPages{
         ++self.pageControl.currentPage;
         CGFloat pageWidth = CGRectGetWidth(self.scrollView.frame);
         if (isFromStart) {
                 [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
                 self.pageControl.currentPage = 0;
             }
         else
             {
                [self.scrollView setContentOffset:CGPointMake(pageWidth*self.pageControl.currentPage, self.scrollView.bounds.origin.y)];
            
                 }
         if (_pageControl.currentPage == _pageControl.numberOfPages - 1) {
                 isFromStart = YES;
             }
         else
             {
                isFromStart = NO;
                 }
     }

-(void)pageTurn:(UIPageControl *)aPageControl{
    NSInteger whichPage = aPageControl.currentPage;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3f];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [_scrollView setContentOffset:CGPointMake(_scrollView.frame.size.width * whichPage, 0.0f) animated:YES];
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeToMessageTable: (id)sender
{
    
}

- (void)scanQR:(id)sender
{
    
}

- (void)advertisementAction:(UIButton *)button
{
    AdvertisementViewController *advertisementViewController = [[AdvertisementViewController alloc]initWithNibName:@"AdvertisementViewController" bundle:nil];
    switch (button.tag) {
        case 200:
            advertisementViewController.navTitle = @"广告一";
            advertisementViewController.url = [NSURL URLWithString:@"http://www.baidu.com"];
            [self.navigationController pushViewController:advertisementViewController animated:YES];
            break;
        case 201:
            advertisementViewController.navTitle = @"广告二";
            advertisementViewController.url = [NSURL URLWithString:@"http://www.baidu.com"];
            [self.navigationController pushViewController:advertisementViewController animated:YES];
            break;
        case 202:
            advertisementViewController.navTitle = @"广告三";
            advertisementViewController.url = [NSURL URLWithString:@"http://www.baidu.com"];
            [self.navigationController pushViewController:advertisementViewController animated:YES];
            break;
            
        default:
            advertisementViewController.navTitle = @"广告四";
            advertisementViewController.url = [NSURL URLWithString:@"http://www.baidu.com"];
            [self.navigationController pushViewController:advertisementViewController animated:YES];
            break;
    }
}


- (IBAction)view1Action:(id)sender {
    //我的预约
    MyAppointmentTableViewController *myAppointmentTableViewController = [[MyAppointmentTableViewController alloc]initWithNibName:@"MyAppointmentTableViewController" bundle:nil];
    [self.navigationController pushViewController:myAppointmentTableViewController animated:YES];
}

- (IBAction)view2Action:(id)sender {
    //门诊缴费
    
}

- (IBAction)view3Action:(id)sender {
    //检验报告
    PhysicalExaminationViewController *physicalExaminationViewController = [[PhysicalExaminationViewController alloc]initWithNibName:@"PhysicalExaminationViewController" bundle:nil];
    [self.navigationController pushViewController:physicalExaminationViewController animated:YES];
}

- (IBAction)view4Action:(id)sender {
    //电子病历
    MedicalRecordViewController *medicalRecordViewController = [[MedicalRecordViewController alloc]initWithNibName:@"MedicalRecordViewController" bundle:nil];
    [self.navigationController pushViewController:medicalRecordViewController animated:YES];
}

- (IBAction)view5Action:(id)sender {
    //体检预约
    
}

- (IBAction)view6Action:(id)sender {
    //就诊专车
}

- (IBAction)view7Action:(id)sender {
    //疾病库
    
}

- (IBAction)view8Action:(id)sender {
    //附近医院
    NearbyHospitalViewController *nearbyHospitalViewController = [[NearbyHospitalViewController alloc]initWithNibName:@"NearbyHospitalViewController" bundle:nil];
    //self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:nearbyHospitalViewController animated:YES];
    
}

- (IBAction)view9Action:(id)sender {
    //附近药店
}

+ (UIImage *)scale:(UIImage *)image toSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.functionType count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.font = [UIFont systemFontOfSize:17.0];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:12];
    }
    
    FunctionType *item = [self.functionType objectAtIndex:indexPath.row];
    cell.textLabel.text = item.name;
    cell.detailTextLabel.text = item.detail;
    cell.imageView.image = [FirstPageViewController scale:item.image toSize:CGSizeMake(40, 40)];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
    //附近医院
    NearbyHospitalViewController *nearbyHospitalViewController = [[NearbyHospitalViewController alloc]initWithNibName:@"NearbyHospitalViewController" bundle:nil];
    
    switch (indexPath.row) {
        case 0:
    
            [(AppDelegate *)[UIApplication sharedApplication].delegate fillViews:1];
            
            break;
        case 1:
    
            [self.navigationController pushViewController:nearbyHospitalViewController animated:YES];
            break;
            
        default:
            [(AppDelegate *)[UIApplication sharedApplication].delegate fillViews:2];
            break;
    }
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
