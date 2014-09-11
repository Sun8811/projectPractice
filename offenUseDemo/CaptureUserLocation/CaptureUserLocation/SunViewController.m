//
//  SunViewController.m
//  CaptureUserLocation
//
//  Created by sunbiao on 14-9-1.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//
#define IS_IOS7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)
#import "SunViewController.h"
#import "MMLocationManager.h"
@interface SunViewController ()
@property(nonatomic,strong)UILabel *textLabel;
@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, IS_IOS7 ? 30 : 10, 320, 60)];
    _textLabel.backgroundColor = [UIColor clearColor];
    _textLabel.font = [UIFont systemFontOfSize:15];
    _textLabel.textColor = [UIColor blackColor];
    _textLabel.textAlignment = NSTextAlignmentCenter;
    _textLabel.numberOfLines = 0;
    _textLabel.text = @"测试位置";
    [self.view addSubview:_textLabel];
    
    UIButton *latBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    latBtn.frame = CGRectMake(100,IS_IOS7 ? 100 : 80, 120, 30);
    [latBtn setTitle:@"获取坐标" forState:UIControlStateNormal];
    [latBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [latBtn addTarget:self action:@selector(getLat) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:latBtn];
    
    UIButton *cityBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    cityBtn.frame = CGRectMake(100,IS_IOS7 ? 150 : 130, 120, 30);
    [cityBtn setTitle:@"获取城市" forState:UIControlStateNormal];
    [cityBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cityBtn addTarget:self action:@selector(getCity) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cityBtn];
    
    UIButton *addressBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    addressBtn.frame = CGRectMake(100,IS_IOS7 ? 200 : 180, 120, 30);
    [addressBtn setTitle:@"获取地址" forState:UIControlStateNormal];
    [addressBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [addressBtn addTarget:self action:@selector(getAddress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:addressBtn];
    
    UIButton *allBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    allBtn.frame = CGRectMake(100,IS_IOS7 ? 250 : 230, 120, 30);
    [allBtn setTitle:@"获取所有信息" forState:UIControlStateNormal];
    [allBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [allBtn addTarget:self action:@selector(getAllInfo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:allBtn];

}
-(void)getAllInfo
{
    __block NSString *string;
    __weak SunViewController *wself = self;
    [[MMLocationManager shareLocation]getLocationCoordinate:^(CLLocationCoordinate2D locationCorrrdinate) {
        string =[NSString stringWithFormat:@"%f,%f",locationCorrrdinate.latitude,locationCorrrdinate.longitude];
    } withAddress:^(NSString *addressString) {
        string = [NSString stringWithFormat:@"%@\n%@",string,addressString];
        [wself setLabelText:string];
    }];
}
-(void)getAddress
{
     __weak SunViewController *wself = self;
    [[MMLocationManager shareLocation]getAddress:^(NSString *addressString) {
        [wself setLabelText:addressString];
    }];
}
-(void)getCity
{
    __weak SunViewController *wself = self;
    [[MMLocationManager shareLocation]getCity:^(NSString *addressString) {
        [wself setLabelText:addressString];
    }
     ];
    
}
-(void)getLat
{
     __weak SunViewController *wself = self;
    [[MMLocationManager shareLocation] getLocationCoordinate:^(CLLocationCoordinate2D locationCorrrdinate) {
        [wself setLabelText:[NSString stringWithFormat:@"%f %f",locationCorrrdinate.latitude,locationCorrrdinate.longitude]];
    }];
    
}
-(void)setLabelText:(NSString *)text
{
    _textLabel.text=text;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
