//
//  NSDate+Additionals.h
//  SQAdditionals
//
//  Created by yuehuig on 2019/5/24.
//  Copyright © 2019 yuehuig. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Additionals)

/**
 *  获取年
 *
 *  @return 年(NSInteger)
 */
- (NSInteger)getYear;
/**
 *  获取月
 *
 *  @return 月(NSInteger)
 */
- (NSInteger)getMonth;
/**
 *  获取日
 *
 *  @return 日(NSInteger)
 */
- (NSInteger)getDay;
/**
 *  获取时
 *
 *  @return 时(NSInteger)
 */
- (NSInteger)getHour;
/**
 *  获取分
 *
 *  @return 分(NSInteger)
 */
- (NSInteger)getMinute;
/**
 *  获取秒
 *
 *  @return 秒(NSInteger)
 */
- (NSInteger)getSecond;


/**
 *  过滤，只剩年月日信息
 *
 *  @return 处理后的date
 */
- (NSDate *)filterForYearMonthDay;

/**
 *  过滤，只剩时分秒
 *
 *  @return 处理后的date
 */
- (NSInteger)filterForHourMinuteSecond;


/**
 *  根据时分秒获取今天某个时刻的时间
 *
 *  @param hms 秒数
 *
 *  @return date
 */
+ (NSDate *)getTodayDateForHourMinuteSecond:(NSInteger)hms;

@end

NS_ASSUME_NONNULL_END
