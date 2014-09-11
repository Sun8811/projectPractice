//
//  SunAnimationView.h
//  Delegate
//
//  Created by sunbiao on 14-8-26.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SunAnimationView <NSObject>

-(void)doSomething;

@end
@interface SunAnimationView : UIView
{
    NSTimer *timer;
}
@property(nonatomic,assign)id<SunAnimationView>delegate;
@end
