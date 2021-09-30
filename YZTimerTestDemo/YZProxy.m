//
//  YZProxy.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "YZProxy.h"

@interface YZProxy ()

@property (nonatomic, weak) id objc;

@end

@implementation YZProxy

- (instancetype)initWithObjc:(id)objc {
    self.objc = objc;
    return self;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.objc methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    if ([self.objc respondsToSelector:invocation.selector]) {
        [invocation invokeWithTarget:self.objc];
    }
}

@end
