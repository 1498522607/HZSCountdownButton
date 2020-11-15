//
//  HZSCountdownButton.h
//  FBSnapshotTestCase
//
//  Created by 古德猫宁 on 2020/11/14.
//

#import <UIKit/UIKit.h>

@class HZSCountdownButton;

typedef void(^HZSCountdownButtonValueChangeBlock)(HZSCountdownButton * sender, int count);
typedef void(^HZSCountdownButtonEndCountBlock)(HZSCountdownButton * sender);


@interface HZSCountdownButton : UIButton

@property (assign, nonatomic) BOOL isCountdowming;

- (void)valueChangeCallBack:(HZSCountdownButtonValueChangeBlock)valueChangeBlock endCountCallBack:(HZSCountdownButtonEndCountBlock)endCountBlock;

- (void)startCountdown:(int)durationTimeInterval;
- (void)endCountdown;

@end
