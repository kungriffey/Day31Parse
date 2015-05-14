//
//  Course.m
//  BMDay31Parse
//
//  Created by Kunwardeep Gill on 2015-05-13.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//
#import <Parse/PFObject+Subclass.h>
#import "Course.h"

@implementation Course

//  dynamic direction essentially tells the compiler
//  trust us this property or method is on it's way.
@dynamic courseName;
@dynamic courseDuration;

+(void)load {
  
  // called when we instantiate an object
  [self registerSubclass];
}

+ (NSString *)parseClassName {
  return @"Course";
}

@end
