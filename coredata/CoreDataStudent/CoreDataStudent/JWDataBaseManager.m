//
//  JWDataBaseManager.m
//  CoreDataStudent
//
//  Created by jiwei on 14-8-21.
//  Copyright (c) 2014年 JiWei. All rights reserved.
//

#import "JWDataBaseManager.h"
#import "JWAppDelegate.h"

#import "Student.h"
#import "Grades.h"
#import "Teacher.h"

@implementation JWDataBaseManager


//添加默认数据
+(void)writeDefaultData{
    JWAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    //插入一个班级
    Grades *grades = [NSEntityDescription insertNewObjectForEntityForName:@"Grades" inManagedObjectContext:delegate.managedObjectContext];
    //设置班级名字
    grades.name = @"计算机一班";
    
    //添加一个学生
    Student *student = [NSEntityDescription insertNewObjectForEntityForName:@"Student" inManagedObjectContext:delegate.managedObjectContext];
    student.number = @1;
    student.name = @"张三";
    
    //添加一个老师
    Teacher *teacher = [NSEntityDescription insertNewObjectForEntityForName:@"Teacher" inManagedObjectContext:delegate.managedObjectContext];
    teacher.name = @"李四";
    teacher.number = @1;
    
    student.rel_Grades = grades;
    [student addRel_TeacherObject:teacher];
    teacher.rel_Grades = grades;
    
    
    //将managerObjectContext中保存的信息更新到物理文件中
    [delegate saveContext];
    
}


//查询
-(void)queryDataBase{
    
    JWAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    //初始化一个查询语句
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    //设置谓语
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"name=张三 and number=1"];
    request.predicate = pre;
    
    //设置排序规则
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    request.sortDescriptors = @[sort];
    
    NSError *error;
    //查询结果用数组接收
    NSArray *students = [delegate.managedObjectContext executeFetchRequest:request error:&error];
    
    //修改数据库对象的值，update
    for (Student *stu in students) {
        stu.name = @"王五";
    }
    [delegate saveContext];
    
    //删除
    
//    for (Student *stu in students) {
//        [delegate.managedObjectContext deleteObject:stu];
//    }
//    [delegate saveContext];
    
}

@end
