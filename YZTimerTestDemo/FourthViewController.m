//
//  FourthViewController.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "FourthViewController.h"
#import "YZProxy.h"

@interface FourthViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startTimer];
}

- (void)startTimer {
    YZProxy *proxy = [[YZProxy alloc] initWithObjc:self];
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:proxy selector:@selector(timerAction) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)stopTimer {
    [self.timer invalidate];
    self.timer = nil;
}

- (void)timerAction {
    NSLog(@"==计时器进行中==");
}

- (void)dealloc {
    [self stopTimer];
    NSLog(@"==FourthViewController销毁了==");
}


@end
