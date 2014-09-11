//
//  SunViewController.m
//  Protocal
//
//  Created by sunbiao on 14-8-27.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"
#import "SunView.h"
@interface SunViewController ()<sunView>
@property(nonatomic,strong)SunView *sunView;
@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	 _sunView=[[SunView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    _sunView.delegate = self;
    _sunView.backgroundColor =[UIColor orangeColor];
    [self.view addSubview:_sunView];
}
-(void)doSomething
{
   // CGRect oldFrame =self.sunView.frame;
    CGPoint center =self.sunView.center;
    dispatch_queue_t queue =dispatch_get_main_queue();
    dispatch_async(queue, ^{
            [UIView animateWithDuration:2.0f animations:^{
                self.sunView.center =CGPointMake(200, 200);
            }];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [UIView animateWithDuration:1.0f animations:^{
                    self.sunView.center = center;
                }];
            });
   
    });
    NSLog(@"jkdfsjf");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
