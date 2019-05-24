//
//  NSArray+Additionals.m
//  SQAdditionals
//
//  Created by yuehuig on 2019/5/24.
//  Copyright © 2019 yuehuig. All rights reserved.
//

#import "NSArray+Additionals.h"

@implementation NSArray (Additionals)

+ (BOOL)isAvailable:(NSArray *)array {
    if (array && [array isKindOfClass:[NSArray class]] && [array count] > 0) {
        return YES;
    }
    return NO;
}

- (id)safeObjectAtIndex:(NSInteger)index {
    @synchronized (self) {
        if(self && index >= 0 && index < [self count]) {
            return [self objectAtIndex:index];
        }
        return nil;
    }
}
@end
