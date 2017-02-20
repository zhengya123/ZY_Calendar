//
//  PDTSimpleCalendarViewHeader.h
//  PDTSimpleCalendar
//
//  Created by ZY on 2017/2/20.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  The `PDTSimpleCalendarViewHeader` class displays the month name and year.
 */
@interface PDTSimpleCalendarViewHeader : UICollectionReusableView

/**
 *  Label that display the month and year
 */
@property (nonatomic, strong) UILabel *titleLabel;

/** @name Customizing Appearance */

/**
 *  Customize the Month text color display.
 */
@property (nonatomic, strong) UIColor *textColor UI_APPEARANCE_SELECTOR;

/**
 *  Customize the Month text font.
 */
@property (nonatomic, strong) UIFont *textFont UI_APPEARANCE_SELECTOR;

/**
 *  Customize the separator color between the month name and the dates.
 */
@property (nonatomic, strong) UIColor *separatorColor UI_APPEARANCE_SELECTOR;

@end
