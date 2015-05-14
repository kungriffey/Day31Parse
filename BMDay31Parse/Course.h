//
//  Course.h
//  BMDay31Parse
//
//  Created by Kunwardeep Gill on 2015-05-13.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import <Parse/Parse.h>


@interface Course : PFObject <PFSubclassing>

+ (NSString *)parseClassName;

@property (nonatomic, strong) NSString *courseName;
@property (nonatomic, strong) NSString *courseDuration;


@end
