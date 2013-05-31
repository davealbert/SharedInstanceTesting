//
//  MyClass.m
//  SharedInstanceTesting
//
//  Created by Dave Albert on 31/05/2013.
//  Copyright (c) 2013 Moodocity, Ltd. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

+(id)sharedInstance {
  
  // Fundamental iOS design patterns: SharedInstance (Singleton in Objective C)
  // http://www.daveoncode.com/2011/12/19/fundamental-ios-design-patterns-sharedinstance-singleton-objective-c/
  
  static dispatch_once_t p = 0;
  
  __strong static id _sharedObject = nil;
  
  dispatch_once(&p, ^{
    _sharedObject = [[self alloc] init];
  });
  
  ((MyClass*)_sharedObject).myVar++;
  return _sharedObject;
}

- (id)init {
  self =[super init];
  if (self) {
    self.myVar = 0;
  }
  return self;
}

@end
