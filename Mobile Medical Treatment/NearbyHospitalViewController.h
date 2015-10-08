//
//  NearbyHospitalViewController.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/11.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"

@interface NearbyHospitalViewController : UIViewController<BMKMapViewDelegate, BMKLocationServiceDelegate, BMKPoiSearchDelegate>
{
    BMKMapView* _mapView;
    BMKLocationService* _locService;
    BMKUserLocation * _userLocation;
    BMKPoiSearch* _poisearch;
    int curPage;
}
@property (nonatomic, strong) CLLocationManager  *locationManager;


@end
