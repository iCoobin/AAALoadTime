//
//  AAAViewController.m
//  AAALoadTime
//
//  Created by chengshoubin on 01/14/2020.
//  Copyright (c) 2020 chengshoubin. All rights reserved.
//

#import "AAAViewController.h"
#import <AAALoadTime/AAALoadTime.h>

@interface AAAViewController ()

@end

@implementation AAAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSString *appLoadDuration = [AAALoadTime appLoadDuration];
    NSString *appInitDuration = [AAALoadTime appInitDuration];
    
    NSLog(@"appLoadDuration:%@",appLoadDuration);
    NSLog(@"appInitDuration:%@",appInitDuration);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
