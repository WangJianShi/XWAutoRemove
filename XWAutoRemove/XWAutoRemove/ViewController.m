//
//  ViewController.m
//  XWAutoRemove
//
//  Created by 王剑石 on 2018/12/3.
//  Copyright © 2018 wangjianshi. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+XWAdd.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *name;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self observer_test];
    [self notification_test];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)observer_test{
    
    [self xw_addObserverBlockForKeyPath:@"name" block:^(id  _Nonnull obj, id  _Nonnull oldVal, id  _Nonnull newVal) {
        
        NSLog(@"%@", (NSString *)newVal);
    }];
    
    self.name = @"你好好";
}

-(void)notification_test{
    
    [self xw_addNotificationForName:@"notification" block:^(NSNotification * _Nonnull notification) {
        
        NSLog(@"i get notification");
    }];
    
    [self xw_postNotificationWithName:@"notification" userInfo:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
