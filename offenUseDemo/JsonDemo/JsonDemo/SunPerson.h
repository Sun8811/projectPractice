//
//  SunPerson.h
//  JsonDemo
//
//  Created by sunbiao on 14-8-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SunPerson : NSObject
@property (nonatomic, retain) NSString *mobilePhoneNumber;
@property (nonatomic, retain) NSString *homePhoneNumber;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) BOOL isMarried;
@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, retain) NSString *addrProvince;
@property (nonatomic, retain) NSString *addrCountry;
@end
