//
//  SunViewController.m
//  testThread
//
//  Created by sunbiao on 14-8-26.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "SunViewController.h"

@interface SunViewController ()

@end

@implementation SunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*测试dispatch_queue_create线程与线程是并发执行的，线程内部是顺序执行的.*/
//	dispatch_queue_t myCustomQueue = dispatch_queue_create("example.MyCustomQueue", NULL);dispatch_async(myCustomQueue, ^{
//        for (int abc=0;abc<10;abc++)
//        {
//            printf("11111.Do some work here.\n");
//        }
//    });dispatch_async(myCustomQueue, ^{
//        for (int abc=0;abc<10;abc++)
//        {
//            printf("22222.Do some work here.\n");
//        }
//    });
//    dispatch_queue_t myCustomQueue2 = dispatch_queue_create("example.MyCustomQueue2", NULL);
//    dispatch_async(myCustomQueue2, ^{
//        for (int abc=0;abc<10;abc++)
//        {
//            printf("1. myCustomQueue2 Do some work here.\n");
//        }
//    });dispatch_async(myCustomQueue2, ^{
//        for (int abc=0;abc<10;abc++)
//        {
//            printf("2. myCustomQueue2 Do some work here.\n");
//        }    
//    });
//    dispatch_async(myCustomQueue2, ^{
//        for (int abc=0;abc<10;abc++)
//        {
//            printf("3. myCustomQueue2 Do some work here.\n");
//        }
//    });
    
    /*通过创建的线程运行时没有任何顺序的所有任务都是并发执行的*/
 /*
    dispatch_queue_t myCustomQueue =dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(myCustomQueue, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("11111.Do some work here.\n");
        }
    });dispatch_async(myCustomQueue, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("22222.Do some work here.\n");
        }
    });
dispatch_queue_t myCustomQueue2=dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(myCustomQueue2, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("1. myCustomQueue2 Do some work here.\n");
        }
    });dispatch_async(myCustomQueue2, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("2. myCustomQueue2 Do some work here.\n");
        }    
    });
  */
    
    /*这样的县城里面所有的任务都是顺序执行的按照FIFO*/
/*    dispatch_queue_t myCustomQueue =dispatch_get_main_queue();
    dispatch_async(myCustomQueue, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("11111.Do some work here.\n");
        }
    });dispatch_async(myCustomQueue, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("22222.Do some work here.\n");
        }
    });
    dispatch_queue_t myCustomQueue2=dispatch_get_main_queue();
    dispatch_async(myCustomQueue2, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("1. myCustomQueue2 Do some work here.\n");
        }
    });dispatch_async(myCustomQueue2, ^{
        for (int abc=0;abc<10;abc++)
        {
            printf("2. myCustomQueue2 Do some work here.\n");
        }
    });

    */

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
