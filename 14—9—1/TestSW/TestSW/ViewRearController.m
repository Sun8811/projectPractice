//
//  ViewRearController.m
//  TestSW
//
//  Created by qingyun on 14-8-21.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewRearController.h"

@interface ViewRearController ()

@end

@implementation ViewRearController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
