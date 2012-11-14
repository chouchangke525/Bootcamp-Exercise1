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

/*******************************************************************************
 * @method      tapToChangeGreeting
 * @abstract    Tap the button to change the greeting
 * @description
 *******************************************************************************/
- (IBAction)tapToChangeGreeting:(UIButton *)sender {
    self.greetingLabel.text = @"Goodbye";
}

@end
