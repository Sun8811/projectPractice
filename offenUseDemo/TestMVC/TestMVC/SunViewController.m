//
//  SunViewController.m
//  TestMVC
//
//  Created by sunbiao on 14-8-23.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"
#import "SunModel.h"
#import "SunView.h"

@interface SunViewController ()

@end

@implementation SunViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor =[UIColor orangeColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    SunModel *model =[[SunModel alloc]initGoods];
    NSDictionary *dict =[NSDictionary dictionaryWithObjectsAndKeys:model.goodsId,@"goodsId",model.goodsTitle,@"goodsTitle",model.price,@"price",model.images,@"images", nil];
    
    SunView *view =[[SunView alloc]initGoodsAttributes:dict];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
