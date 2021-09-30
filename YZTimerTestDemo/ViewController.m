//
//  ViewController.m
//  YZTimerTestDemo
//
//  Created by Lester 's Mac on 2021/9/30.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"==%@===", [self getSuperClass:[UIWindow class]]);
    
}

- (NSArray *)getSuperClass:(Class)cls {
    if (cls == nil) {
        return @[];
    }
    
    NSMutableArray *array = [NSMutableArray array];
    while (cls) {
        [array addObject:cls];
        cls = [cls superclass];
    }
    
    return array.copy;
}

@end
