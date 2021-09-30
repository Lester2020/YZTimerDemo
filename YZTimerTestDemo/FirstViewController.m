//
//  FirstViewController.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startTimer];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self stopTimer];
}


- (void)startTimer {
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
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
    NSLog(@"==FirstViewController销毁了==");
}


@end
