//
//  ViewController.m
//  PDTSimpleCalendar
//
//  Created by 吕万昌 on 2017/2/17.
//  Copyright © 2017年 LWC. All rights reserved.
//

#import "ViewController.h"

#import "PDTSimpleCalendarViewController.h"

@interface ViewController ()<PDTSimpleCalendarViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)calendarAction:(id)sender {
    PDTSimpleCalendarViewController *vc = [PDTSimpleCalendarViewController new];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *beginTimeString      = @"2016-12-01";
    dateFormatter.dateFormat       = @"yyyy-MM-dd";
    //dateFormatter.dateFormat = [NSDateFormatter dateFormatFromTemplate:@"yyyy-MM-dd EEEE" options:0 locale:[NSCalendar currentCalendar].locale];
    
    vc.firstDate                   = [dateFormatter dateFromString:beginTimeString];
    vc.selectedDate = [NSDate date];
    vc.weekdayHeaderEnabled = YES;
    vc.weekdayTextType =  PDTSimpleCalendarViewWeekdayTextTypeStandAlone;
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)simpleCalendarViewController:(PDTSimpleCalendarViewController *)controller didSelectDate:(NSDate *)date{

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    [formatter setLocale:[NSLocale localeWithLocaleIdentifier:@"zh-CN"]];
    NSString * dateStr = [NSString stringWithFormat:@"%@",[formatter  stringFromDate:date]];
    NSLog(@"%@",[NSString stringWithFormat:@"%@",dateStr]);
}
@end
