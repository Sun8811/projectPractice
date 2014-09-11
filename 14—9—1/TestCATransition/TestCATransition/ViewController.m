//
//  ViewController.m
//  TestCATransition
//
//  Created by qingyun on 14-8-22.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (nonatomic, strong) NSMutableArray *array;//tableView数据源

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //default data
    self.array = [NSMutableArray arrayWithArray:@[@"zhang san", @"li si", @"wangwu"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)press:(id)sender {
    //改变数据源
    if (self.array.count == 3) {
        [self.array addObject:@"zhao liu"];
    }else{
        [self.array removeLastObject];
    }
    //更新tableView
    [self.tableView reloadData];
    
    CATransition *ani = [CATransition animation];
    //动画时间
    ani.duration = .5f;
    //快进快出
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //
    ani.fillMode = kCAFillModeForwards;
    //动画样式
    ani.type = kCATransitionPush;
    //动画的方向
    ani.subtype = kCATransitionFromRight;
    //将动画添加到目标view的layer上
    [self.tableView.layer addAnimation:ani forKey:nil];
    
    
}

//数据源

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

@end
