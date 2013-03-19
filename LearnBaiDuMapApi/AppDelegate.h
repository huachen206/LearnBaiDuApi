//
//  AppDelegate.h
//  LearnBaiDuMapApi
//
//  Created by 花 晨 on 13-3-19.
//  Copyright (c) 2013年 中卡. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    BMKMapManager *_mapManager;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;


@end
