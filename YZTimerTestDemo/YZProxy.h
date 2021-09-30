//
//  YZProxy.h
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YZProxy : NSProxy

- (instancetype)initWithObjc:(id)objc;

@end

NS_ASSUME_NONNULL_END
