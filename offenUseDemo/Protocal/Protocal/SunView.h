//
//  SunView.h
//  Protocal
//
//  Created by sunbiao on 14-8-27.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol sunView <NSObject>

-(void)doSomething;

@end
@interface SunView : UIView
@property(nonatomic,assign)id<sunView>delegate;
@end
