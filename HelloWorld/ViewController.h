//
//  ViewController.h
//  HelloWorld
//
//  Created by T. Andrew Binkowski on 11/13/12.
//  Copyright (c) 2012 The University of Chicago, Department of Computer Science. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;


- (IBAction)tapToChangeGreeting:(UIButton *)sender;

@end
