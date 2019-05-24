//
//  NSArray+Additionals.h
//  SQAdditionals
//
//  Created by yuehuig on 2019/5/24.
//  Copyright © 2019 yuehuig. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Additionals)

+ (BOOL)isAvailable: (NSArray *)array;

/**
 *    @brief 获取指定数组中的对象，不会引起索引越界的错误
 *
 *    @param index 索引值
 *
 *    @return 获取到的对象或nil
 */
- (id)safeObjectAtIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
