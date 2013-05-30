//
//  SACViewController.m
//  Beepr
//
//  Created by Michael Harper on 5/30/13.
//  Copyright (c) 2013 Standalone Code LLC. All rights reserved.
//

#import "SACViewController.h"
#import "AudioToolbox/AudioServices.h"

@interface SACViewController ()

@end

@implementation SACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) beepAction
{
  OSStatus audioFileError;
  SystemSoundID beepId;
  NSString *pathToBeep = [[NSBundle mainBundle] pathForResource:@"big_beep" ofType:@"wav"];
  audioFileError = AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:pathToBeep], &beepId);
  AudioServicesPlaySystemSound(beepId);
}

@end
