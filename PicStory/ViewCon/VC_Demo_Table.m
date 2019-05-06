//
//  VC_Demo_Table.m
//  PicStory
//
//  Created by LakeTong on 2019/5/5.
//  Copyright © 2019 LakeTong. All rights reserved.
//

#import "VC_Demo_Table.h"
#import "TCellPicListes.h"

@interface VC_Demo_Table ()<UITableViewDataSource>

@end

@implementation VC_Demo_Table

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
#pragma mark - Table

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TCellPicListes *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell creditCell:nil];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}



@end
