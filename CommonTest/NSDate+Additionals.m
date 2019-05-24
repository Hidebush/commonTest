//
//  NSDate+Additionals.m
//  SQAdditionals
//
//  Created by yuehuig on 2019/5/24.
//  Copyright © 2019 yuehuig. All rights reserved.
//

#import "NSDate+Additionals.h"

@implementation NSDate (Additionals)

- (NSInteger)getYear {
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:self];
    return [comp year];
}

- (NSInteger)getMonth {
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth fromDate:self];
    return [comp month];
}

- (NSInteger)getDay {
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:self];
    return [comp day];
}

- (NSInteger)getHour {
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:NSCalendarUnitHour fromDate:self];
    return [comp hour];
}

- (NSInteger)getMinute {
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:NSCalendarUnitMinute fromDate:self];
    return [comp minute];
}

- (NSInteger)getSecond {
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:NSCalendarUnitSecond fromDate:self];
    return [comp second];
}

- (NSDate *)filterForYearMonthDay {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyyMMdd"];
    NSString *dateString = [formatter stringFromDate:self];
    NSDate *date = [formatter dateFromString:dateString];
    return date;
}

- (NSInteger)filterForHourMinuteSecond {
    NSInteger hour = [self getHour];
    NSInteger minute = [self getMinute];
    NSInteger second = [self getSecond];
    return hour*3600 + minute*60 + second;
}

+ (NSDate *)getTodayDateForHourMinuteSecond:(NSInteger)hms {
    NSDate *today = [[NSDate date] filterForYearMonthDay];
    NSDate *date = [NSDate dateWithTimeInterval:hms sinceDate:today];
    return date;
}

@end
