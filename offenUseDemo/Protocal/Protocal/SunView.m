//
//  SunView.m
//  Protocal
//
//  Created by sunbiao on 14-8-27.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunView.h"

@implementation SunView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(tellDelegateDoSomething) userInfo:nil repeats:YES];
    }
    return self;
}
-(void)tellDelegateDoSomething
{
    [self.delegate doSomething];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
