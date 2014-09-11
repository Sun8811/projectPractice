//
//  SunViewController.m
//  Catransication
//
//  Created by sunbiao on 14-8-22.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"

@interface SunViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@property(nonatomic,strong) NSMutableArray *array;

@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.array =[NSMutableArray arrayWithArray:@[@"123",@"zhangsan",@"lisi"]];
	
}
- (IBAction)button:(UIButton *)sender {
    if (self.array.count ==3) {
        [self.array addObject:@"wangwu"];
    }else{
        [self.array removeLastObject];
    }
    
    [self.tableView reloadData];
    
    CATransition *animation =[CATransition alloc];
    animation.timingFunction =[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animation.duration= 0.5f;
    animation.fillMode =kCAFillModeForwards;
    animation.type =kCATransitionPush;
    animation.subtype =kCATransitionFromLeft;
    
    [self.tableView.layer addAnimation:animation forKey:nil];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text =self.array[indexPath.row];
    cell.textLabel.textAlignment =NSTextAlignmentCenter;
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
