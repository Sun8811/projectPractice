//
//  SunModel.h
//  TestMVC
//
//  Created by sunbiao on 14-8-23.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SunModel : NSObject
@property(nonatomic,strong)NSString *goodsId;
@property(nonatomic,strong)NSString *goodsTitle;
@property(nonatomic,strong)NSString *price;
@property(nonatomic,strong)NSString *images;

-(SunModel *)initGoods;
@end
