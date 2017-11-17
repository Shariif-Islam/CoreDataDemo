//
//  AddInformationVC.h
//  CoreDataExample
//
//  Created by Shariif on 11/29/16.
//  Copyright © 2016 Shariif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddInformationVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tf_name;
@property (weak, nonatomic) IBOutlet UITextField *tf_phoneNumber;
@property (weak, nonatomic) IBOutlet UITextField *tf_address;
- (IBAction)save:(id)sender;

@end
