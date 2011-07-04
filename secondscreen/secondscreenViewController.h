//
//  secondscreenViewController.h
//  secondscreen
//
//  Created by Matt Biddulph on 04/07/2011.
//  Copyright 2011 Nokia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondscreenViewController : UIViewController <UIGestureRecognizerDelegate> {
    UIWebView *webView;
    UIView *configView;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UIView *configView;
@end
