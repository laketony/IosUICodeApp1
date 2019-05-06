//
//  LTabBarItem.m
//  PicStory
//
//  Created by LakeTong on 2019/5/6.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import "LTabBarItem.h"

@interface LTabBarItem()
 
@property (weak, nonatomic) IBOutlet UIView *view4BGColor;

@end
@implementation LTabBarItem

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(instancetype)force:(UIView *)view{
    return (LTabBarItem *)view;
}

@end
