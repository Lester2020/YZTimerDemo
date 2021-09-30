//
//  SecondViewController.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "SecondViewController.h"
#import "YZTimer.h"

@interface SecondViewController ()

@property (nonatomic, strong) YZTimer *timer;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timer = [[YZTimer alloc] init];
    [self.timer startTimer];
}

- (void)dealloc {
    [self.timer stopTimer];
    NSLog(@"==SecondViewController销毁了==");
}

@end
