//
//  SecondViewController.m
//  SharedInstanceTesting
//
//  Created by Dave Albert on 31/05/2013.
//  Copyright (c) 2013 Moodocity, Ltd. All rights reserved.
//

#import "SecondViewController.h"
#import "MyClass.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated {
  NSLog(@"SecondViewController: %d",[[MyClass sharedInstance] myVar]);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)back:(id)sender {
  [self dismissViewControllerAnimated:YES completion:^{
    nil;
  }];
}

@end
