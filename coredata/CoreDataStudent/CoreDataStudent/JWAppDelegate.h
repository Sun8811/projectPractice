//
//  JWAppDelegate.h
//  CoreDataStudent
//
//  Created by jiwei on 14-8-20.
//  Copyright (c) 2014年 JiWei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
