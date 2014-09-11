//
//  SunPerson.m
//  JsonDemo
//
//  Created by sunbiao on 14-8-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunPerson.h"

@implementation SunPerson
- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@,mobilePhone:%@,homePone%@,married:%@", self.name,self.mobilePhoneNumber,self.homePhoneNumber,(self.isMarried ? @"YES":@"NO")];
}

@end
