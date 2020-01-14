//
//  main.m
//  AAALoadTime
//
//  Created by chengshoubin on 01/14/2020.
//  Copyright (c) 2020 chengshoubin. All rights reserved.
//

@import UIKit;
#import "AAAAppDelegate.h"
#import <AAALoadTime/AAALoadTime-umbrella.h>

int main(int argc, char * argv[])
{
    [AAALoadTime appStartMain];
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AAAAppDelegate class]));
    }
}
