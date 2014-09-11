//
//  SunView.m
//  TestMVC
//
//  Created by sunbiao on 14-8-23.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//


/*
 
 在view里面添加勇于接受数据的属性，通过字典用键值初始化
 */


#import "SunView.h"

@implementation SunView


-(SunView *)initGoodsAttributes:(NSDictionary *)dict
{
  
    self =[super init];
    if (self) {
        self.goodsTitle =[dict objectForKey:@"goodsTitle"];
        self.price =[dict objectForKey:@"price"];
        self.images =[dict objectForKey:@"images"];
        
    }
    [self drawRect];
    return self;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect
{
    //商品的名字
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 25.0f, 310.0f, 16.0f)];
    
    title.text = self.goodsTitle;
    title.textColor = [UIColor blackColor];
    title.font = [UIFont fontWithName:@"FZZhongDengXian-Z07S" size:16];
    title.backgroundColor = [UIColor clearColor];
    
    [self addSubview:title];
    
    //商品的图片
    UIImageView *goodsImage =[[UIImageView alloc] initWithFrame:CGRectMake(0, 40,320, 330)];
    //下载图片
    NSURL *imageUrl =[NSURL URLWithString:self.images];
    NSData *data =[NSData dataWithContentsOfURL:imageUrl];
    goodsImage.image =[UIImage imageWithData:data];
    
    [self addSubview:goodsImage];
    
    //商品的价格
    UILabel *price=[[UILabel alloc] initWithFrame:CGRectMake(5.0f,380.0f, 320.0f,14.0f)];
    
    price.text=[NSString stringWithFormat:@"促销%@%@",@"价格：￥",self.price];
    price.font = [UIFont systemFontOfSize:14];
    price.textColor = [UIColor redColor];
    
    [self addSubview:price];
    

}


@end
