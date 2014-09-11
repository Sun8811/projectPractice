//
//  SunSecondViewController.m
//  PassValue
//
//  Created by sunbiao on 14-8-27.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunSecondViewController.h"

@interface SunSecondViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnTitle;
@property(nonatomic,strong)NSArray *array;
@end

@implementation SunSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}
- (void)btn:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate changeLabelText:self.array[sender.tag]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.array =@[@"1",@"2",@"3",@"4",@"5",@"6"];
    for (int i = 0 ; i < 6; i++) {
        UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(20+i*40, 20+i*40, 40, 40)];
        btn.backgroundColor =[UIColor orangeColor];
        [self.view addSubview:btn];
        [btn setTitle:self.array[i] forState:UIControlStateNormal];
        btn.tag=i;
        [btn addTarget:self action:@selector(btn:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
