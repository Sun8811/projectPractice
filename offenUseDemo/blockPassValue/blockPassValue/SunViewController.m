//
//  SunViewController.m
//  blockPassValue
//
//  Created by sunbiao on 14-9-4.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"
#import "SunSecondViewController.h"

@interface SunViewController ()
@property(nonatomic,strong)    UILabel *label;
@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 60, 60)];
    [btn addTarget:self action:@selector(DisplayNextVC) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor =[UIColor grayColor];
    _label =[[UILabel alloc]initWithFrame:CGRectMake(20, 20, 50, 50)];
    _label.backgroundColor =[UIColor blueColor];
    [self.view addSubview:_label];
    [self.view addSubview:btn];
}
-(void)DisplayNextVC
{
    SunSecondViewController *second =[[SunSecondViewController alloc]initwithBlock:^(NSString *str) {
        NSLog(@"string");
        _label.text =str;
    }];
    [self presentViewController:second animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
