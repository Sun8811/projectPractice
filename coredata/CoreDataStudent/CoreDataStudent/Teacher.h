//
//  Teacher.h
//  CoreDataStudent
//
//  Created by jiwei on 14-8-21.
//  Copyright (c) 2014年 JiWei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Grades, Student;

@interface Teacher : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * number;
@property (nonatomic, retain) Grades *rel_Grades;
@property (nonatomic, retain) NSSet *rel_Student;
@end

@interface Teacher (CoreDataGeneratedAccessors)

- (void)addRel_StudentObject:(Student *)value;
- (void)removeRel_StudentObject:(Student *)value;
- (void)addRel_Student:(NSSet *)values;
- (void)removeRel_Student:(NSSet *)values;

@end
