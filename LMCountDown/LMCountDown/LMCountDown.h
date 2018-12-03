//
//  LMCountDown.h
//  LMCountDown
//
//  Created by ponted on 2018/12/3.
//  Copyright © 2018 Shenzhen Blood Link Medical Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LMCountDown : NSObject
{
    dispatch_source_t timer;
}


/**
 开启定时器倒计时
 
 @param timeUI 显示倒计时时间
 */
 
/**
  开启定时器倒计时

 @param timeUI          显示倒计时时间
 @param totalNumber     总时间倒计时
 @param countText       倒计时的过程内容
 @param block           回调
 */
- (void)setTimerCountDown:(id)timeUI total:(NSInteger)totalNumber  countText:(NSString *)countText block:(void(^)(void))block;

/**
 取消结束倒计时
 */
- (void)cancelTimer;

@end


