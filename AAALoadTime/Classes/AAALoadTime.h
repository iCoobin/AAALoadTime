//
//  AAALoadTime.h
//  AAALoadTime
//
//  Created by apple on 2020/1/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AAALoadTime : NSObject

+ (void)appStartMain;           //开始调用main
+ (void)appEndInit;             //app初始化结束

//持续时间ms
+ (nullable NSString *)appLoadDuration;     //app加载耗时
+ (nullable NSString *)appInitDuration;     //app初始化耗时
+ (nullable NSString *)appLaunchDuration;   //app启动时长，从点击图标到初始化完成。

@end

NS_ASSUME_NONNULL_END
