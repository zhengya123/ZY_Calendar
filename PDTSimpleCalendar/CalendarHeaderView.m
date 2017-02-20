//
//  CalendarHeaderView.m
//  PDTSimpleCalendar
//
//  Created by dqong on 2017/2/20.
//  Copyright © 2017年 LWC. All rights reserved.
//

#import "CalendarHeaderView.h"

@implementation CalendarHeaderView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        for (int i = 0; i<7; i++) {
            UILabel * weekLabel = [[UILabel alloc]initWithFrame:CGRectMake(i * [UIScreen mainScreen].bounds.size.width/7, 64, [UIScreen mainScreen].bounds.size.width/7, 30)];
            weekLabel.backgroundColor = [UIColor whiteColor];
            weekLabel.font = [UIFont systemFontOfSize:12];
            weekLabel.textAlignment = NSTextAlignmentCenter;
            weekLabel.text = [NSString stringWithFormat:@"%@",self.weektitleArray[i]];
            [self addSubview:weekLabel];
        }
    }
    return self;
}
-(NSMutableArray *)weektitleArray{
    if (_weektitleArray == nil) {
        _weektitleArray = [NSMutableArray new];
        [_weektitleArray addObjectsFromArray:@[@"星期日",@"星期一",@"星期二",@"星期三",@"星期四",@"星期五",@"星期六"]];
    }
    return _weektitleArray;
}
@end
