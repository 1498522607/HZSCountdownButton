//
//  HZSCountdownButton.m
//  FBSnapshotTestCase
//
//  Created by 古德猫宁 on 2020/11/14.
//

#import "HZSCountdownButton.h"
#import "HZSWeakTimerTarget.h"

@interface HZSCountdownButton ()

@property (copy, nonatomic) HZSCountdownButtonValueChangeBlock  valueChangeBlock;
@property (copy, nonatomic) HZSCountdownButtonEndCountBlock endCountBlock;


@property (nonatomic, assign) int durationTimeInterval;
@property (nonatomic,strong) NSTimer *timer;
@property (assign, nonatomic) int currentCount;

@end

@implementation HZSCountdownButton


- (void)valueChangeCallBack:(HZSCountdownButtonValueChangeBlock)valueChangeBlock endCountCallBack:(HZSCountdownButtonEndCountBlock)endCountBlock {
    self.valueChangeBlock = valueChangeBlock;
    self.endCountBlock = endCountBlock;
    
}


- (void)startCountdown:(int)durationTimeInterval {
    
    self.isCountdowming = YES;
    self.durationTimeInterval = durationTimeInterval;
    if (!_timer) {
        _timer = [HZSWeakTimerTarget scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES runLoopMode:NSRunLoopCommonModes];
    }
}

- (void)endCountdown {
    self.isCountdowming = NO;
    self.userInteractionEnabled = YES;
    [_timer invalidate];
    _timer = nil;
    if (_endCountBlock) {
        _endCountBlock(self);
    }
}



- (void)countDown {
    self.durationTimeInterval--;
    if (self.durationTimeInterval == 0) {
        [self endCountdown];
        return;
    }
    if (_valueChangeBlock) {
        _valueChangeBlock(self, self.durationTimeInterval);
    }
}

- (void)dealloc {
    //被销毁了
    NSLog(@"被销毁了");
}


@end
