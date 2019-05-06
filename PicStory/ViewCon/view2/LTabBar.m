//
//  LTabBar.m
//  PicStory
//
//  Created by LakeTong on 2019/5/6.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import "LTabBar.h"
#import "LTabBarItem.h"

@interface LTabBar()


@property (weak, nonatomic) IBOutlet UIView *barView;

@end


@implementation LTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self = [[[NSBundle mainBundle] loadNibNamed:@"LTabBar" owner:self options:nil] firstObject];
    if (self) {
        self.frame = frame;
    }
    return self;
}


- (void)creditItems:(NSArray<UITabBarItem *> *)items{
    
    int i = 0;
    for (UITabBarItem * baritem in items) {
        LTabBarItem *v =  [[[NSBundle mainBundle] loadNibNamed:@"LTabBar" owner:self options:nil] lastObject];
        v.index = i;
        [v.button setTitle: baritem.title forState:UIControlStateNormal];
        [v.button addTarget:self action:@selector(btnFxSelected:) forControlEvents:UIControlEventTouchUpInside];
        
        [v setCenter:CGPointMake(100*i+74/2.0+27, self.barView.frame.size.height/2.0f)];
        [self.barView addSubview:v];
        i++;
    }
  
    NSLog(@"!~~~~~~~!!");
    NSLog(@"%@",items);
}

-(void)btnFxSelected:(UIButton *)btn{
    NSLog(@"%@",btn);
    LTabBarItem * vItem = (LTabBarItem *)btn.superview.superview; 
    [self.delegate selectedIndex:vItem.index];
}


@end
