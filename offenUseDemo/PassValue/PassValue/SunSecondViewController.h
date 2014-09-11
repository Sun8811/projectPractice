//
//  SunSecondViewController.h
//  PassValue
//
//  Created by sunbiao on 14-8-27.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol sunSecondViewController <NSObject>

- (void)changeLabelText:(NSString *)text;

@end

@interface SunSecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property(nonatomic,assign)id<sunSecondViewController>delegate;
@end
