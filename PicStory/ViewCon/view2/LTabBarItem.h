//
//  LTabBarItem.h
//  PicStory
//
//  Created by LakeTong on 2019/5/6.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTabBarItem : UIView

@property (assign,nonatomic) NSUInteger index;
@property (weak, nonatomic) IBOutlet UIButton *button;

//只是强制转换 为了语法整洁好看
+(instancetype)force:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
