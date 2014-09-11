//
//  SunViewController.m
//  Delegate
//
//  Created by sunbiao on 14-8-26.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"
#import "SunAnimationView.h"
@interface SunViewController ()<SunAnimationView>

@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	CGRect rect =CGRectMake(0, 0, 200, 200);
    SunAnimationView *view =[[SunAnimationView alloc]initWithFrame:rect];
    view.backgroundColor=[UIColor redColor];
    view.delegate = self;
    [self.view addSubview:view];
    
}
-(void)doSomething
{
   NSLog(@"I'm the delegate! I'm doing printing!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
