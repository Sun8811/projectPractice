//
//  ViewController.m
//  TestFoldView
//
//  Created by qingyun on 14-8-21.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.array = [NSMutableArray arrayWithObjects:@0, @0, @0, @0,@0, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //无论每个section中是否有cell都保留
    return 5;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //每个section的个数
    NSInteger count = [self.array[section] integerValue];
    return count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40.f;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //添加section的点击事件
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    [button setTitle:@"section" forState:UIControlStateNormal];
    //传递section
    button.tag = section;
    [button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor redColor]];
    return button;
}

-(void)press:(UIButton *)button{
    
    //更新每个section中的个数
    NSInteger count = [self.array[button.tag] integerValue];
    if (count == 0) {
        [self.array replaceObjectAtIndex:button.tag withObject:@3];
    }else{
        [self.array replaceObjectAtIndex:button.tag withObject:@0];
    }
    
    //刷新对应的section
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:button.tag] withRowAnimation:UITableViewRowAnimationAutomatic];
}

@end
