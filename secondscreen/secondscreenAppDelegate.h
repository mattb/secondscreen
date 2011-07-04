//
//  secondscreenAppDelegate.h
//  secondscreen
//
//  Created by Matt Biddulph on 04/07/2011.
//  Copyright 2011 Nokia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class secondscreenViewController;

@interface secondscreenAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) secondscreenViewController *viewController;

@end
