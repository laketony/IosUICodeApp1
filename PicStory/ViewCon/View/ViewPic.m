//
//  ViewPic.m
//  PicStory
//
//  Created by LakeTong on 2019/5/5.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import "ViewPic.h"

@implementation ViewPic

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(instancetype) view{
   return [[ViewPic alloc] initView];
}

-(instancetype)initView{
    self = [[[NSBundle mainBundle] loadNibNamed:@"ViewPic" owner:self options:nil] lastObject];
    if (self) {
        
    }
    return self;
}

@end
