//
//  AAALoadTime.h
//  AAALoadTime
//
//  Created by apple on 2020/1/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AAALoadTime : NSObject

#pragma mark - 时刻
+ (void)appStartMain;           //开始调用main
+ (void)appEndInit;             //app初始化结束
+ (void)appStartFirstSychWatchlist;//开始首次同步自选
+ (void)appEndFirstSychWatchlist;  //结束首次同步自选 首次同步

#pragma mark - 时长
//持续时间ms
+ (nullable NSString *)appLoadDuration;     //app加载耗时
+ (nullable NSString *)appInitDuration;     //app初始化耗时
+ (nullable NSString *)appLaunchDuration;   //app启动时长，从点击图标到初始化完成。
+ (nullable NSString *)appFirstSychWatchlistDuration;//首次同步自选耗时

@end

NS_ASSUME_NONNULL_END
