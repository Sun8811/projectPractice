//
//  SunAnimationView.m
//  Delegate
//
//  Created by sunbiao on 14-8-26.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunAnimationView.h"

@implementation SunAnimationView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(doPlay) userInfo:nil repeats:YES];
        
    }
    return self;
}
-(void)doPlay
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
