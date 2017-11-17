//
//  AddInformationVC.m
//  CoreDataExample
//
//  Created by Shariif on 11/29/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import "AddInformationVC.h"

@import CoreData;

@interface AddInformationVC ()

@end



@implementation AddInformationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    
    NSManagedObjectContext* context = [self managedObjectContext];
    NSManagedObject* info = [NSEntityDescription insertNewObjectForEntityForName:@"Information" inManagedObjectContext:context];
    [info setValue:self.tf_name.text forKey:@"name"];
    [info setValue:self.tf_phoneNumber.text forKey:@"phoneNumber"];
    [info setValue:self.tf_address.text forKey:@"address"];
    
    NSError* error = nil;
    
    if (![context save:&error]) {
        NSLog(@"Connot save data %@ %@",error,[error localizedDescription]);
    } else {
    
        NSLog(@"data saved successfully");
    }
}

/*
 Retrived managed context from app delegate
 **/
-(NSManagedObjectContext*) managedObjectContext{
    
    NSManagedObjectContext* context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    
    NSLog(@"%@",delegate);
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

@end
