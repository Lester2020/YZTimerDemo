//
//  YZTimer.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "YZTimer.h"

@interface YZTimer ()

{
    NSTimer *_timer;
}

@end

@implementation YZTimer

- (void)startTimer {
    _timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

- (void)stopTimer {
    if (_timer == nil) {
        return;
    }
    [_timer invalidate];
    _timer = nil;
}

- (void)timerAction {
    NSLog(@"==计时器进行中==");
}

- (void)dealloc {
    NSLog(@"==YZTimer销毁了==");
}


@end
