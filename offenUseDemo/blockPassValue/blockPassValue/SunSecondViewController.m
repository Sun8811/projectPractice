//
//  SunSecondViewController.m
//  blockPassValue
//
//  Created by sunbiao on 14-9-4.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunSecondViewController.h"

@interface SunSecondViewController ()
@property(nonatomic,strong)UITextField *texifield;
@end

@implementation SunSecondViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}
-(id)initwithBlock:(MyBlock)str
{
   // self =[super init];
    if(self)
    {
        my = str;
    }
    return self;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor orangeColor];
    _texifield =[[UITextField alloc]initWithFrame:CGRectMake(20, 20, 280, 40)];
    _texifield.borderStyle= UITextBorderStyleRoundedRect;
    UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(200, 200, 50, 50)];
    btn.backgroundColor =[UIColor redColor];
    [btn addTarget:self action:@selector(doSomething) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_texifield];
    [self.view addSubview:btn];
}
-(void)doSomething
{
   // NSString* s = self.texifield.text;
    my( self.texifield.text);
//    if(my)
//    {
//        my(s);
//    }
    [self dismissModalViewControllerAnimated:YES];
}
@end
