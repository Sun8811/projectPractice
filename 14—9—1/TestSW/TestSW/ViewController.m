//
//  ViewController.m
//  TestSW
//
//  Created by qingyun on 14-8-21.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

#import "ViewRearController.h"
#import "ViewFrontController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //背后控制视图
    ViewRearController *rearCon = [[ViewRearController alloc] init];
    //子控制器的引用
    [self addChildViewController:rearCon];
    [self.view addSubview:rearCon.view];
    rearCon.view.frame = CGRectMake(10, 10, 320, 460);
    
    //前面的展示视图
    ViewFrontController *frontCon = [[ViewFrontController alloc] init];
    [self addChildViewController:frontCon];
    [self.view addSubview:frontCon.view];
    frontCon.view.frame = CGRectMake(250, 10, 320, 460);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
