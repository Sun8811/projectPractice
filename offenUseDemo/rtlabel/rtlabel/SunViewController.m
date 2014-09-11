//
//  SunViewController.m
//  rtlabel
//
//  Created by sunbiao on 14-8-29.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"
#import "RTLabel.h"
@interface SunViewController ()<UITextViewDelegate>
@property(nonatomic,strong)    UITextView *textview;

@property(nonatomic,strong) RTLabel *label;
@end

@implementation SunViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _textview =[[UITextView alloc]initWithFrame:self.view.bounds];
    _textview.delegate=self;
    _textview.backgroundColor =[UIColor orangeColor];
       [self.view addSubview:_textview];
    [_textview becomeFirstResponder];
   

    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doSomething)];
    [_textview addGestureRecognizer:tap];
    
}
-(void)doSomething
{
    [_textview resignFirstResponder];

}


- (void)textViewDidEndEditing:(UITextView *)textView
{
    CGFloat height= 0.0f;

    _label =[[RTLabel alloc]initWithFrame:CGRectMake(0, 0, 320, 0)];
   // _label.backgroundColor =[UIColor redColor];
    _label.alpha=0;
    _label.font =[ UIFont systemFontOfSize:14.0f];
    _label.text = _textview.text;
    height += _label.optimumSize.height;
    NSLog(@"%f",height);
    _label.frame =CGRectMake(0, 20, 320, height);
     _textview.text=@"";
    UIImageView *omageview =[[UIImageView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_label.frame), 300, 100)];
    omageview.image =[UIImage imageNamed:@"主导航-个人页-press"];
    [_textview addSubview:omageview];
    [_textview addSubview:_label];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
