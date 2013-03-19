//
//  ViewController.m
//  LearnBaiDuMapApi
//
//  Created by 花 晨 on 13-3-19.
//  Copyright (c) 2013年 中卡. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _mapView = [[BMKMapView alloc] initWithFrame:self.view.frame];
    self.view = _mapView;
    _mapView.delegate = self;
    _search = [[BMKSearch alloc] init];
    _search.delegate = self;
    
    [_mapView setShowsUserLocation:YES];
    NSLog(@"%@",_mapView.userLocation);
    
    
    [_search poiSearchInCity:@"北京" withKey:@"书店" pageIndex:0];
    
    
    
    
}
-(void)onGetPoiResult:(NSArray *)poiResultList searchType:(int)type errorCode:(int)error{
    if (error == BMKErrorOk) {
        BMKPoiResult *result = [poiResultList objectAtIndex:0];
        for (int i = 0; i<result.poiInfoList.count; i++) {
            BMKPoiInfo *poi = [result.poiInfoList objectAtIndex:i];
            BMKPointAnnotation *item = [[BMKPointAnnotation alloc] init];
            item.coordinate = poi.pt;
            item.title = poi.name;
            [_mapView addAnnotation:item];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
