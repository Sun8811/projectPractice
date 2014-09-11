//
//  SunViewController.m
//  PassValue
//
//  Created by sunbiao on 14-8-27.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"
#import "SunSecondViewController.h"
@interface SunViewController ()<sunSecondViewController>

@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btn:(UIButton *)sender {
    SunSecondViewController *secondView= [[SunSecondViewController alloc]init];
    secondView.delegate =self;
    [self presentViewController:secondView animated:YES completion:nil];
}
-(void)changeLabelText:(NSString *)text
{
    self.label.text =text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
