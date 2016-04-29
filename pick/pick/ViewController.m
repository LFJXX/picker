//
//  ViewController.m
//  pick
//
//  Created by apple on 16/4/29.
//  Copyright © 2016年 xyb100. All rights reserved.
//

#import "ViewController.h"
#import "LFPickView.h"
#import "LFPickValue.h"
@interface ViewController ()<LFPickViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}
- (IBAction)show:(id)sender {
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:0];
    LFPickView *pick = [[LFPickView alloc] init];
    pick.delegate = self;
    LFPickValue *value ;
    for (int i  = 0; i<15; i++) {
        value = [[LFPickValue alloc] init];
        value.title = [NSString stringWithFormat:@"测试====%d",i];
        value.code = [NSString stringWithFormat:@"%d",i];
        [arr addObject:value];
    }
    pick.dataSourse = arr;
    [pick show];
}
- (IBAction)hide:(id)sender {
}

- (void)pickViewDidSeleted:(LFPickValue *)value{
    NSLog(@"%@-----%@",value.title,value.code);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
