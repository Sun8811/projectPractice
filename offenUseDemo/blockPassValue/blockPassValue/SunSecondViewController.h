//
//  SunSecondViewController.h
//  blockPassValue
//
//  Created by sunbiao on 14-9-4.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^MyBlock)(NSString *);


@interface SunSecondViewController : UIViewController
{
    MyBlock my;
}
-(id)initwithBlock:(MyBlock)str;

@end
