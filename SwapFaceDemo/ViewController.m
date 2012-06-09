//
//  ViewController.m
//  SwapFaceDemo
//
//  Created by Shi Forrest on 12-6-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "MOGlassButton.h"

#define BUTTON_WIDTH  300
#define BUTTON_HEIGHT 60

@interface ViewController ()

@end



@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    MOGlassButton* choosePhotoButton = [[MOGlassButton alloc] 
                                        initWithFrame:CGRectMake(self.view.bounds.size.width/2 - BUTTON_WIDTH/2 , 
                                                                 self.view.bounds.size.height - BUTTON_HEIGHT *1.5 , BUTTON_WIDTH, BUTTON_HEIGHT)];
	[choosePhotoButton setupAsGreenButton];
	[choosePhotoButton setTitle:@"Choose Photo" forState:UIControlStateNormal];
	[self.view addSubview:choosePhotoButton ];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
