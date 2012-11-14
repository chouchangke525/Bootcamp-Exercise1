//
//  ViewController.m
//  HelloWorld
//
//  Created by T. Andrew Binkowski on 11/13/12.
//  Copyright (c) 2012 The University of Chicago, Department of Computer Science. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Target-Actions
/*******************************************************************************
 * @method      tapToChangeGreeting
 * @abstract    Tap the button to change the greeting
 * @description
 *******************************************************************************/
- (IBAction)tapToChangeGreeting:(UIButton *)sender {
    self.greetingLabel.text = @"Goodbye";
}

#pragma mark - UITextField Protocol Methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == self.passwordField) {
        if ([self.passwordField.text isEqualToString:@"asdf"]) {
            self.greetingLabel.text = [NSString stringWithFormat:@"Password Accepted"];
            self.view.backgroundColor = [UIColor greenColor];
        } else {
            self.view.backgroundColor = [UIColor redColor];
            self.greetingLabel.text = [NSString stringWithFormat:@"Denied"];
        }
    }
    // Print the text string inputed to the console
    NSLog(@">>>> The text input: %@", self.passwordField.text);
    
    // Dismiss the keyboard
    [textField resignFirstResponder];
}

@end
