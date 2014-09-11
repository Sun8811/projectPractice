//
//  SunViewController.m
//  jsonRequestWebData
//
//  Created by sunbiao on 14-8-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"

@interface SunViewController ()

@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSURL *url =[NSURL URLWithString:@"http://m.weather.com.cn/data/101180701.html"];
    NSData *data =[NSData dataWithContentsOfURL:url];
    NSError *error =nil;
    NSMutableDictionary *dcit =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
  
    NSLog(@"%@",dcit);
  
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
