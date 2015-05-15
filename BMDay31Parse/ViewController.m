//
//  ViewController.m
//  BMDay31Parse
//
//  Created by Kunwardeep Gill on 2015-05-11.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
#import "Course.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  
  //initialize Course object
  Course *courseObject = [[Course alloc]init];
  
  [Parse setApplicationId:@"u8mYVbMtUXEWLG6zL4hvEeuXc5FVbgjVLwPFfsxL" clientKey:@"FYmNxshQGVY6KLHMMIhwbtSFXHHVhiV6F2Nf854g"];
  
  
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  [defaults setObject:@"Kunwar" forKey:@"firstName"];
  [defaults setObject:@"Gill" forKey:@"lastName"];
  [defaults synchronize]; //saves the values
  [self returnedData];
  
  
//  UIImage *imageObject = [UIImage imageNamed:@"Crop"];
//  
//  //convert this to data
//  NSData *imageData = UIImagePNGRepresentation(imageObject);
//  PFFile *imageFile = [PFFile fileWithName:@"Crop" data:imageData];
//  
//  //What is happening here
//  courseObject = [Course objectWithoutDataWithObjectId:courseObject.objectId];
//  [courseObject setObject:@"Kunwar Gill" forKey:@"name"];
//  [courseObject setObject:imageFile forKey:@"image"];
//  [courseObject saveInBackground];
  
  
  //Fetch The Data from Parse
  
//  PFFile *fetchData = [courseObject objectForKey:@"image"];
//  NSData *returnedData = [fetchData getData];
//  UIImage *image = [UIImage imageWithData:returnedData];
//  
//  NSLog(@"%@", returnedData);
//  NSLog(@"%@",image);
//  
//  self.myImage.image = image;
  
}

- (void)returnedData {
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  //pull out the first name from the firstName key
  NSString *firstName = [defaults objectForKey:@"firstName"];
  NSString *lastName = [defaults objectForKey:@"lastName"];
  
  NSLog(@"%@ %@", firstName, lastName);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
