//
//  HZSTestViewController.m
//  HZSCountdownButton_Example
//
//  Created by hzsMac on 2020/11/14.
//  Copyright © 2020 1498522607@qq.com. All rights reserved.
//

#import "HZSTestViewController.h"
#import "HZSCountdownButton.h"



@interface HZSTestViewController ()

@end

@implementation HZSTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HZSCountdownButton * button = [[HZSCountdownButton alloc] init];
    [self.view addSubview:button];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(buttonOnClickAction:) forControlEvents:UIControlEventTouchUpInside];
    
    __weak typeof(self) weakSelf = self;
    
    [button valueChangeCallBack:^(HZSCountdownButton *sender, int count) {
        sender.enabled = NO;
        [sender setTitle:[NSString stringWithFormat:@"倒计时%d", count] forState:UIControlStateNormal];
    } endCountCallBack:^(HZSCountdownButton *sender) {
        sender.enabled = YES;
        [sender setTitle:@"倒计时完成" forState:UIControlStateNormal];
    }];
}

- (void)buttonOnClickAction:(HZSCountdownButton *)sender {
    [sender startCountdown:10];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

@end
