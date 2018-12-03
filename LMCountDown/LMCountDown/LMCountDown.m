//
//  LMCountDown.m
//  LMCountDown
//
//  Created by ponted on 2018/12/3.
//  Copyright © 2018 Shenzhen Blood Link Medical Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LMCountDown.h"

@implementation LMCountDown

- (void)setTimerCountDown:(id)timeUI total:(NSInteger)totalNumber countText:(NSString *)countText block:(void (^)(void))block
{
    if ([timeUI isKindOfClass:[UILabel class]]) {
        UILabel *timeLabel = (UILabel *)timeUI;
        timeLabel.userInteractionEnabled = NO;
    }
    
    if ([timeUI isKindOfClass:[UIButton class]]) {
        UIButton *timeLabel = (UIButton *)timeUI;
        timeLabel.enabled = NO;
    }
    
    __block NSInteger number = totalNumber;
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    //倒叙数数
    if(timer == nil)
    {
        timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    }
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC, 1 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(timer, ^{
        
        number --;
        dispatch_async(dispatch_get_main_queue(), ^{
            if ([timeUI isKindOfClass:[UILabel class]]) {
                UILabel *timeLabel = (UILabel *)timeUI;
                timeLabel.text = [NSString stringWithFormat:@"%ld%@",number,countText?countText:@""];
            }
            if ([timeUI isKindOfClass:[UIButton class]]) {
                UIButton *timeLabel = (UIButton *)timeUI;
                [timeLabel setTitle:[NSString stringWithFormat:@"%ld%@",number,countText?countText:@""] forState:UIControlStateNormal];
            }
        });
        
        if (number == 0)
        {
            dispatch_source_cancel(self->timer);
            self->timer = nil;
            if (block) {
                block();
            }
        }
        
    });
    dispatch_resume(timer);
}


- (void)cancelTimer
{
    if (timer != nil)
    {
        dispatch_source_cancel(timer);
        timer = nil;
    }
}

@end
