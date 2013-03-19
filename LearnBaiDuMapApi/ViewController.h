//
//  ViewController.h
//  LearnBaiDuMapApi
//
//  Created by 花 晨 on 13-3-19.
//  Copyright (c) 2013年 中卡. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"

@interface ViewController : UIViewController<BMKMapViewDelegate,BMKSearchDelegate>{
    BMKSearch *_search;
    BMKMapView *_mapView;
}

@end
