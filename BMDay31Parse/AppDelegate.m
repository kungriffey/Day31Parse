//
//  AppDelegate.m
//  BMDay31Parse
//
//  Created by Kunwardeep Gill on 2015-05-11.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

#include "Course.h"

@interface AppDelegate ()
{
  NSMutableDictionary *currentUser;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
  
//  //initialize Course object
//  Course *courseObject = [[Course alloc]init];
//  
//  [Parse setApplicationId:@"u8mYVbMtUXEWLG6zL4hvEeuXc5FVbgjVLwPFfsxL" clientKey:@"FYmNxshQGVY6KLHMMIhwbtSFXHHVhiV6F2Nf854g"];

  //Enable Analytics
  //[PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
  
  //Kwame Storing Data
//  PFObject *myObject = [PFObject objectWithClassName:@"Demo"];
//  [myObject setObject:[NSNumber numberWithInt:656] forKey:@"visitedCount"];
//  [myObject setObject:@"Kunwar Gill" forKey:@"userName"];
//  [myObject setObject:@"123456" forKey:@"userID"];
//  [myObject saveInBackground];
  
  
  //storing the object
//  courseObject = [Course objectWithoutDataWithObjectId:courseObject.objectId];
//  [courseObject setObject:@"Kunwar Gill" forKey:@"Name"];
//  [courseObject saveInBackground];
  
  
  //Kwame Retreiving Data
//  PFQuery *query = [PFQuery queryWithClassName:@"Demo"];
//  [query getObjectInBackgroundWithId:@"26LL76sFSi" block:^(PFObject *userInfo, NSError *error){
//    NSLog(@"%@", userInfo);
//
//  }];
  /*Create a parse object //6C9VNyeow9
  PFObject *gameScore = [PFObject objectWithClassName:@"GameScore"];
  gameScore[@"score"] = @100;
  gameScore[@"playerName"] = @"Kunwar Gill";
  gameScore[@"cheatMode"] = @NO;
  [gameScore saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
    if (succeeded) {
      // The object has been saved.
    } else {
      // There was a problem, check error.description
    }
  }];*/
  
  //[gameScore save];
  
  
  
 /* //Retrieve Data
  PFQuery *queryObject = [PFQuery queryWithClassName:@"GameScore"];
  [queryObject getObjectInBackgroundWithId:@"j50UTu3hIQ" block:^(PFObject *gameScore, NSError *error)
   {
     NSLog(@"%@", gameScore);
   }];*/
  
  return [[FBSDKApplicationDelegate sharedInstance] application:application
                                  didFinishLaunchingWithOptions:launchOptions];
  
  
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  [FBSDKAppEvents activateApp];

  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
  return [[FBSDKApplicationDelegate sharedInstance] application:application
                                                        openURL:url
                                              sourceApplication:sourceApplication
                                                     annotation:annotation];
}

@end
