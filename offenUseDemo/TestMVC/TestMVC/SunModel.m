//
//  SunModel.m
//  TestMVC
//
//  Created by sunbiao on 14-8-23.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//


/*
 
 在models里对数据进行初始化
 
*/
#import "SunModel.h"

@implementation SunModel
-(SunModel *)initGoods
{
    SunModel *model =[[SunModel alloc]init];
    model.goodsId =@"1";
    model.goodsTitle =@"XXXX";
    model.images =@"http://img04.taobaocdn.com/bao/uploaded/i4/13291029901716261/T1uhwNXeVaXXXXXXXX_!!0-item_pic.jpg_310x310.jpg";
    model.price =@"998";
    
    return model;
}
@end
