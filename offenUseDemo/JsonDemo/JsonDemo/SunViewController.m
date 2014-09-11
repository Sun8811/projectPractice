//
//  SunViewController.m
//  JsonDemo
//
//  Created by sunbiao on 14-8-25.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"
#import "SunPerson.h"

enum indexAddress
{
    kIndexMobilePhone = 0,
    kIndexHomePhone
};

@interface SunViewController ()

@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *url =[[NSBundle mainBundle]URLForResource:@"person" withExtension:@"json"];
    NSData *data =[NSData dataWithContentsOfURL:url];
    NSError *error =nil;
    NSMutableArray *personArray =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
   
    NSLog(@"%@",personArray);
    
    for (NSDictionary *dict in personArray) {
        SunPerson *person = [[SunPerson alloc]init];
        person.name =[dict objectForKey:@"name"];
        person.mobilePhoneNumber = dict[@"phone"][kIndexMobilePhone];
        person.homePhoneNumber = dict[@"phone"][kIndexHomePhone];
        
        person.age = [[dict objectForKey:@"Age"] integerValue];
        person.isMarried = [[dict objectForKey:@"married"] boolValue] ;
         NSLog(@"%@",person);
    }
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
