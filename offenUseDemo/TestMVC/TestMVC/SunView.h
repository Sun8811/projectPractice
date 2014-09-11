//
//  SunView.h
//  TestMVC
//
//  Created by sunbiao on 14-8-23.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface SunView : UIView
@property(nonatomic,strong)NSString *goodsTitle;
@property(nonatomic,strong)NSString *price;
@property(nonatomic,strong)NSString *images;

-(SunView *)initGoodsAttributes:(NSDictionary *)dict;
@end
