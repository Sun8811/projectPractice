//
//  SunViewController.m
//  tableFold
//
//  Created by sunbiao on 14-8-21.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"

@interface SunViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSMutableArray *array;
@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.array =[NSMutableArray arrayWithObjects:@0,@0,@0,@0,@0, nil];
    self.tableView.dataSource =self;
    self.tableView.delegate =self;
    self.tableView.editing =YES;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.array[section]integerValue];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
    btn.tag=section;
    [btn setTitle:@"Hello" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(doPress:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor =[UIColor redColor];
    return btn;
}
-(void)doPress:(UIButton *)sender
{
     NSInteger count = [self.array[sender.tag] integerValue];
    if (count ==0) {
        [self.array replaceObjectAtIndex:sender.tag withObject:@5];
    }else{
        [self.array replaceObjectAtIndex:sender.tag withObject:@0];
    }

    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:sender.tag] withRowAnimation:UITableViewAutomaticDimension];
    
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
