//
//  ViewController.m
//  BackGroundModel
//
//  Created by qingyun on 14-9-1.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()

@property (nonatomic, strong) CLLocationManager *locationManager;//GPS定位管理工具
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //调用CoreLocation
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager startUpdatingLocation];
    
    //测试后台运行
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.f target:self selector:@selector(runLoop:) userInfo:nil repeats:YES];
    self.timer = timer;
}

-(void)runLoop:(NSTimer *)timer{
    NSLog(@"%s", __func__);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
