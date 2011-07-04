//
//  secondscreenViewController.m
//  secondscreen
//
//  Created by Matt Biddulph on 04/07/2011.
//  Copyright 2011 Nokia. All rights reserved.
//

#import "secondscreenViewController.h"

@implementation secondscreenViewController
@synthesize webView;
@synthesize configView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    self.wantsFullScreenLayout = YES;
    [super viewDidLoad];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.romancehaslivedtoolonguponthisriver.com"]]];
    //[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://pua.spum.org/faves/friends/"]]];
    //[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://dextr.riglondon.com/"]]];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRightAction:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    swipeRight.delegate = self;
    [self.webView addGestureRecognizer:swipeRight];
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeftAction:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    swipeLeft.delegate = self;
    [self.webView addGestureRecognizer:swipeLeft];
}

- (void) swipeLeftAction:(UILongPressGestureRecognizer *)sender {
    NSLog(@"THIS IS WHERE WE DISMISS THE CONFIG UI");
    configView.hidden = YES;
}

- (void) swipeRightAction:(UILongPressGestureRecognizer *)sender {
    NSLog(@"THIS IS WHERE WE CALL UP THE CONFIG UI");
    configView.hidden = NO;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return YES;
}

@end
