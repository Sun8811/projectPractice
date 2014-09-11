//
//  Student.h
//  CoreDataStudent
//
//  Created by jiwei on 14-8-21.
//  Copyright (c) 2014年 JiWei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Grades, Teacher;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * number;
@property (nonatomic, retain) Grades *rel_Grades;
@property (nonatomic, retain) NSSet *rel_Teacher;
@end

@interface Student (CoreDataGeneratedAccessors)

- (void)addRel_TeacherObject:(Teacher *)value;
- (void)removeRel_TeacherObject:(Teacher *)value;
- (void)addRel_Teacher:(NSSet *)values;
- (void)removeRel_Teacher:(NSSet *)values;

@end
