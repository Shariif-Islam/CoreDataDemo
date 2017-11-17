//
//  AppDelegate.h
//  CoreDataExample
//
//  Created by Shariif on 11/29/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

