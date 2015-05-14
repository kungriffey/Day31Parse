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
  
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
