//
//  HospitalChoiceViewController.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "HospitalChoiceViewController.h"
#import "HospitalRegisterViewController.h"


@interface HospitalChoiceViewController ()
{
    HospitalCell *cell;
}

@end

@implementation HospitalChoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"医院";
    [self loadHospital];
    
//    Hospital *hospital1 = [[Hospital alloc]init];
//    hospital1.hospitalName = @"中国人民解放军总医院";
//    hospital1.level = @"三级甲等";
//    hospital1.registNumber = @"预约量 124.6万";
//    hospital1.judgeNumber = @"患者评价 5.9万";
//    
//    Hospital *hospital2 = [[Hospital alloc]init];
//    hospital2.hospitalName = @"上海交通大学医学院附属医院";
//    hospital2.level = @"三级甲等";
//    hospital2.registNumber = @"预约量 90.6万";
//    hospital2.judgeNumber = @"患者评价 3.8万";
//    
//    Hospital *hospital3 = [[Hospital alloc]init];
//    hospital3.hospitalName = @"华中科技大学同济医学院";
//    hospital3.level = @"三级甲等";
//    hospital3.registNumber = @"预约量 172.8万";
//    hospital3.judgeNumber = @"患者评价 1.0万";
//    
//    Hospital *hospital4 = [[Hospital alloc]init];
//    hospital4.hospitalName = @"中山大学附属第三医院";
//    hospital4.level = @"三级甲等";
//    hospital4.registNumber = @"预约量 124.6万";
//    hospital4.judgeNumber = @"患者评价 5.9万";
//    
//    Hospital *hospital5 = [[Hospital alloc]init];
//    hospital5.hospitalName = @"北京天坛医院特需门诊";
//    hospital5.level = @"三级甲等";
//    hospital5.registNumber = @"预约量 186.3万";
//    hospital5.judgeNumber = @"患者评价 10.0万";
//    
//    Hospital *hospital6 = [[Hospital alloc]init];
//    hospital6.hospitalName = @"中国人民解放军总医院";
//    hospital6.level = @"三级甲等";
//    hospital6.registNumber = @"预约量 124.6万";
//    hospital6.judgeNumber = @"患者评价 5.9万";
//    
//    Hospital *hospital7 = [[Hospital alloc]init];
//    hospital7.hospitalName = @"上海交通大学医学院附属医院";
//    hospital7.level = @"三级甲等";
//    hospital7.registNumber = @"预约量 90.6万";
//    hospital7.judgeNumber = @"患者评价 3.8万";
//    
//    self.hospitals = [NSMutableArray arrayWithObjects:hospital1, hospital2, hospital3, hospital4, hospital5, hospital6, hospital7, nil];
    
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    
}

- (void) loadHospital
{
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//    
//    NSURL *url = [NSURL URLWithString:@"http://10.109.34.3/MHealth/servlet/HospitalServlet"];
//    //NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
//    
//    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30.0];
//
//    
//    NSHTTPURLResponse *response;
//    NSError *error = nil;
//    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
//    
//    if (error != nil) {
//        NSLog(@"Error on load = %@", [error localizedDescription]);
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"网络错误" message:[error localizedDescription] delegate:self cancelButtonTitle:@"知道了" otherButtonTitles: nil];
//        [alert show];
//        
//        return;
//    }
//    
//    if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
//        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
//        if (httpResponse.statusCode != 200) {
//            return;
//        }
//    }
//    
//    NSArray *hospitalArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
//    self.hospitals = [[NSMutableArray alloc]initWithCapacity:[hospitalArray count]];
//    for (int i=0; i<[hospitalArray count]; i++) {
//        NSDictionary *array = [hospitalArray objectAtIndex:i];
//        Hospital *hospital = [[Hospital alloc]init];
//        hospital.hospitalName = [array objectForKey:@"hospitalName"];
//        hospital.level = [array objectForKey:@"HospitalType"];
//        //hospital.registNumber = [array objectForKey:@"orderNumber"];
//        //hospital.judgeNumber = [array objectForKey:@"userEvaluate"];
//        hospital.registNumber = @"预约量 90.6万";
//        hospital.judgeNumber = @"患者评价 3.8万";
//        
//        [self.hospitals addObject:hospital];
//    }
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//        
//            [self.tableView reloadData];
//        });
//        
//    });

    
    
    NSURL *url = [NSURL URLWithString:@"http://10.109.34.3/MHealth/servlet/HospitalServlet"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //    从URL获取json数据
    AFJSONRequestOperation *operation1 = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSLog(@"获取到的数据为：%@",JSON);
//        NSArray *hospitalArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
//            self.hospitals = [[NSMutableArray alloc]initWithCapacity:[hospitalArray count]];
//            for (int i=0; i<[hospitalArray count]; i++) {
//                NSDictionary *array = [hospitalArray objectAtIndex:i];
//                Hospital *hospital = [[Hospital alloc]init];
//                hospital.hospitalName = [array objectForKey:@"hospitalName"];
//                hospital.level = [array objectForKey:@"HospitalType"];
//                //hospital.registNumber = [array objectForKey:@"orderNumber"];
//                //hospital.judgeNumber = [array objectForKey:@"userEvaluate"];
//                hospital.registNumber = @"预约量 90.6万";
//                hospital.judgeNumber = @"患者评价 3.8万";
//            
//        
//                [self.hospitals addObject:hospital];
//            }
        [AFNetworkActivityIndicatorManager sharedManager].enabled = NO;
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id data) {
        NSLog(@"发生错误！%@",error);
    }];
    [operation1 start];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    self.tabBarController.tabBar.hidden = YES;
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _hospitals.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellin = @"cell";
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellin];
    if (cell == nil) {
        
        cell = [[NSBundle mainBundle] loadNibNamed:@"HospitalCell" owner:self options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    Hospital *item = [_hospitals objectAtIndex:indexPath.row];
    cell.hospitalLable.text = item.hospitalName;
    cell.levelLable.text = item.level;
    cell.numberLable.text = item.registNumber;
    cell.judgeLable.text = item.judgeNumber;
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    Hospital *item = [_hospitals objectAtIndex:indexPath.row];

    [[NSUserDefaults standardUserDefaults] setObject:item.hospitalName forKey:@"hospitalName"];
    [self.navigationController popViewControllerAnimated:YES];
    
    NSLog(@"cell.hospital:%@",item.hospitalName);
}


@end
