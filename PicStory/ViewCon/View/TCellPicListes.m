//
//  TCellPicListes.m
//  PicStory
//
//  Created by LakeTong on 2019/5/5.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import "TCellPicListes.h"
#import "ViewPic.h"

@interface TCellPicListes()

@property (weak, nonatomic) IBOutlet UIStackView *stkView;

@end

@implementation TCellPicListes

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

}
-(void)creditCell:(NSDictionary *)dic{
    NSArray *views = [self.stkView subviews];
    for (UIView *v in views) {
        [v removeFromSuperview];
    }
    int sum = rand()%5+1;
    for (int i = 0; i<sum; i++) {
        
        ViewPic *viewa = [ViewPic view];
        [self.stkView addArrangedSubview:viewa];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (UIView *)copyView:(UIView *)view{
//    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:view];
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:view requiringSecureCoding:YES error:nil];
    //unarchivedObjectOfClass:fromData:error: instead
    return [NSKeyedUnarchiver unarchivedObjectOfClass:[UIView class] fromData:tempArchive error:nil];
//    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
}
@end
