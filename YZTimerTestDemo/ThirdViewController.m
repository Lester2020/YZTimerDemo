//
//  ThirdViewController.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timer = [NSTimer timerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"==计时器进行中==");
    }];
    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}


- (void)dealloc {
    [self.timer invalidate];
    NSLog(@"==ThirdViewController销毁了==");
}

@end
