//
//  ViewController.m
//  HelloWorld
//
//  Created by T. Andrew Binkowski on 11/13/12.
//  Copyright (c) 2012 The University of Chicago, Department of Computer Science. All rights reserved.
//

#import "ViewController.h"

// Class Extension (Private) ///////////////////////////////////////////////////
@interface ViewController ()

@end

// Class ///////////////////////////////////////////////////////////////////////
@implementation ViewController

/*******************************************************************************
 * @method      viewDidLoad
 * @abstract    Method called when the view is loaded
 * @description
 *******************************************************************************/
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

/*******************************************************************************
 * @method      didReceiveMemoryWarning
 * @abstract    Called when memory is low
 * @description
 *******************************************************************************/
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
- (IBAction)tapToChangeGreeting:(UIButton *)sender
{
    self.greetingLabel.text = @"Goodbye";
}

#pragma mark - UITextField Protocol Methods

/*******************************************************************************
 * @method      textFieldShoudlReturn:
 * @abstract    Method called when the "Return" button is hit on the keyboard
 * @description
 *******************************************************************************/
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    // Test if the textField is the password field (not necessary, but could be useful if need to distinguish between textFields such as a username field)
    if (textField == self.passwordField) {

        // Test if the password is equal to "abc123"
        if ([self.passwordField.text isEqualToString:@"abc123"]) {

            // Update the greeting label
            self.greetingLabel.text = [NSString stringWithFormat:@"Password Accepted"];
            
            // Change the view controller's main view background to green
            self.view.backgroundColor = [UIColor greenColor];
        } else {
            // The password is not correct, change the background color to red
            self.view.backgroundColor = [UIColor redColor];
            
            // Change the greeting to "Denied"
            self.greetingLabel.text = [NSString stringWithFormat:@"Denied"];
        }
    }
    
    // Print the text string inputed to the console
    NSLog(@">>>> The text input: %@", self.passwordField.text);
    
    // Dismiss the keyboard
    [textField resignFirstResponder];
}

@end
