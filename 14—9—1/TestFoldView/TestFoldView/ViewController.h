//
//  ViewController.h
//  TestFoldView
//
//  Created by qingyun on 14-8-21.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
