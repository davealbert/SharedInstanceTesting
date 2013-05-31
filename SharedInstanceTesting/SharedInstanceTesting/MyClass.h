//
//  MyClass.h
//  SharedInstanceTesting
//
//  Created by Dave Albert on 31/05/2013.
//  Copyright (c) 2013 Moodocity, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject

@property (nonatomic, assign) int myVar;

+ (id)sharedInstance;

@end
