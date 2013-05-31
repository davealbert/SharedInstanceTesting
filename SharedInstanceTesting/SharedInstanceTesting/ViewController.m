//
//  ViewController.m
//  SharedInstanceTesting
//
//  Created by Dave Albert on 31/05/2013.
//  Copyright (c) 2013 Moodocity, Ltd. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
  NSLog(@"ViewController: %d",[[MyClass sharedInstance] myVar]);
}

- (IBAction)go:(id)sender {
  SecondViewController *svc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
  [self presentViewController:svc animated:YES completion:^{
    nil;
  }];
}

@end
