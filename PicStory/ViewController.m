//
//  ViewController.m
//  PicStory
//
//  Created by LakeTong on 2019/5/5.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)btnFxDismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)btnFxDisPush:(id)sender
{
    [[self navigationController]popViewControllerAnimated:YES];
}

@end
