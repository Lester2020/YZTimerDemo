//
//  FiveViewController.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "FiveViewController.h"

@interface FiveViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startTimer];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self stopTimer];
}


- (void)startTimer {
    __weak typeof(self)weakSelf = self;
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:weakSelf selector:@selector(timerAction) userInfo:nil repeats:YES];
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
    NSLog(@"==FiveViewController销毁了==");
}

@end
