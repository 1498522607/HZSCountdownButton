//
//  HZSViewController.m
//  HZSCountdownButton
//
//  Created by 1498522607@qq.com on 11/14/2020.
//  Copyright (c) 2020 1498522607@qq.com. All rights reserved.
//

#import "HZSViewController.h"
#import "HZSTestViewController.h"


@interface HZSViewController ()

@end

@implementation HZSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[HZSTestViewController new] animated:YES];
}
@end
