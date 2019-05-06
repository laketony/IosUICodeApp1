//
//  VC_TabBat_Cunse.m
//  PicStory
//
//  Created by LakeTong on 2019/5/6.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import "VC_TabBat_Cunse.h"
#import "LTabBar.h"

@interface VC_TabBat_Cunse ()<LBarDelegate>

@end

@implementation VC_TabBat_Cunse

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGRect barRect = CGRectMake(0, self.view.frame.size.height-60, self.view.frame.size.width, 60);
    LTabBar *cunBar = [[LTabBar alloc]initWithFrame:barRect];
    [cunBar creditItems:self.tabBar.items];
    [cunBar setDelegate:self];
    
    [cunBar.btnSender addTarget:self action:@selector(openSender:) forControlEvents:UIControlEventTouchUpInside ];
    
    [self.tabBar setHidden:YES];
    [self.view addSubview:cunBar];
  
}
- (void)selectedIndex:(NSUInteger)selectedIndex
{
    [self setSelectedIndex:selectedIndex];
}
-(void)openSender:(id)sender{
    [self performSegueWithIdentifier:@"openSender" sender:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
