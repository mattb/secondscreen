//
//  main.m
//  secondscreen
//
//  Created by Matt Biddulph on 04/07/2011.
//  Copyright 2011 Nokia. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "secondscreenAppDelegate.h"

int main(int argc, char *argv[])
{
    int retVal = 0;
    @autoreleasepool {
        retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([secondscreenAppDelegate class]));
    }
    return retVal;
}
