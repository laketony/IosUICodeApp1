//
//  LTabBar.h
//  PicStory
//
//  Created by LakeTong on 2019/5/6.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol LBarDelegate <NSObject>

-(void)selectedIndex:(NSUInteger)selectedIndex;

@end

@interface LTabBar : UIView

@property (weak, nonatomic) IBOutlet UIButton *btnSender;
@property(nonatomic,weak)id<LBarDelegate> delegate;

- (void)creditItems:(NSArray<UITabBarItem *> *)items;

@end

NS_ASSUME_NONNULL_END
