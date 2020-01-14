//
//  AAALoadTime.m
//  AAALoadTime
//
//  Created by apple on 2020/1/14.
//

#import "AAALoadTime.h"

@interface AAALoadTime ()

@property (nonatomic, strong) NSDate *appStartLoadDate;         //app开始加载时间
@property (nonatomic, strong) NSDate *appStartMainDate;         //app(结束加载时间、开始初始化)
@property (nonatomic, strong) NSDate *appEndInitDate;           //app(结束初始化、首屏开始时间)
@property (nonatomic, strong) NSDate *appStartFirstSychWatchlistDate;   //开始首次同步自选
@property (nonatomic, strong) NSDate *appEndFirstSychWatchlistDate;     //结束首次同步自选
@property (nonatomic, strong) NSDate *appStartFirstPageShowDate;        //开始首次显示首屏
@property (nonatomic, strong) NSDate *appEndFirstPageShowDate;          //结束首次显示首屏

@end


@implementation AAALoadTime

+ (void)load
{
    [AAALoadTime shared].appStartLoadDate = [NSDate date];
}

+ (instancetype)shared
{
    static AAALoadTime *instace = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instace = [[AAALoadTime alloc] init];
    });
    return instace;
}

#pragma mark - Public 时刻
+ (void)appStartMain
{
    if (![AAALoadTime shared].appStartMainDate) {
        [AAALoadTime shared].appStartMainDate = [NSDate date];
    }
}
+ (void)appEndInit
{
    if (![AAALoadTime shared].appEndInitDate) {
        [AAALoadTime shared].appEndInitDate = [NSDate date];
    }
}

+ (void)appStartFirstSychWatchlist
{
    if (![AAALoadTime shared].appStartFirstSychWatchlistDate) {
        [AAALoadTime shared].appStartFirstSychWatchlistDate = [NSDate date];
    }
}
+ (void)appEndFirstSychWatchlist
{
    if (![AAALoadTime shared].appEndFirstSychWatchlistDate) {
        [AAALoadTime shared].appEndFirstSychWatchlistDate = [NSDate date];
    }
}
+ (void)appStartFirstPageShow
{
    if (![AAALoadTime shared].appStartFirstPageShowDate) {
        [AAALoadTime shared].appStartFirstPageShowDate = [NSDate date];
    }
}
+ (void)appEndFirstPageShow
{
    if (![AAALoadTime shared].appEndFirstPageShowDate) {
        [AAALoadTime shared].appEndFirstPageShowDate = [NSDate date];
    }
}

#pragma mark - 时长获取
+ (nullable NSString *)appLoadDuration
{
    NSDate *appStartLoadDate = [AAALoadTime shared].appStartLoadDate;
    NSDate *appStartMainDate = [AAALoadTime shared].appStartMainDate;
    if (!appStartLoadDate || !appStartMainDate) {
        return nil;
    }
    NSTimeInterval start = [appStartLoadDate timeIntervalSince1970];
    NSTimeInterval end = [appStartMainDate timeIntervalSince1970];
    NSTimeInterval def = end - start;
    NSString *duration = [NSString stringWithFormat:@"%.0lf",def*1000];
    return duration;
}
+ (nullable NSString *)appInitDuration
{
    NSDate *appStartMainDate = [AAALoadTime shared].appStartMainDate;
    NSDate *appEndInitDate = [AAALoadTime shared].appEndInitDate;
    if (!appStartMainDate || !appEndInitDate) {
        return nil;
    }
    NSTimeInterval start = [appStartMainDate timeIntervalSince1970];
    NSTimeInterval end = [appEndInitDate timeIntervalSince1970];
    NSTimeInterval def = end - start;
    NSString *duration = [NSString stringWithFormat:@"%.0lf",def*1000];
    return duration;
}

+ (nullable NSString *)appLaunchDuration
{
    NSDate *appStartLoadDate = [AAALoadTime shared].appStartLoadDate;
    NSDate *appEndInitDate = [AAALoadTime shared].appEndInitDate;
    if (!appStartLoadDate || !appEndInitDate) {
        return nil;
    }
    NSTimeInterval start = [appStartLoadDate timeIntervalSince1970];
    NSTimeInterval end = [appEndInitDate timeIntervalSince1970];
    NSTimeInterval def = end - start;
    NSString *duration = [NSString stringWithFormat:@"%.0lf",def*1000];
    return duration;
}

+ (nullable NSString *)appFirstSychWatchlistDuration
{
    NSDate *appStartFirstSychWatchlistDate = [AAALoadTime shared].appStartFirstSychWatchlistDate;
    NSDate *appEndFirstSychWatchlistDate = [AAALoadTime shared].appEndFirstSychWatchlistDate;
    if (!appStartFirstSychWatchlistDate || !appEndFirstSychWatchlistDate) {
        return nil;
    }
    NSTimeInterval start = [appStartFirstSychWatchlistDate timeIntervalSince1970];
    NSTimeInterval end = [appEndFirstSychWatchlistDate timeIntervalSince1970];
    NSTimeInterval def = end - start;
    NSString *duration = [NSString stringWithFormat:@"%.0lf",def*1000];
    return duration;
}
+ (nullable NSString *)appFirstPageShowDuration
{
    NSDate *appStartFirstPageShowDate = [AAALoadTime shared].appStartFirstPageShowDate;
    NSDate *appEndFirstPageShowDate = [AAALoadTime shared].appEndFirstPageShowDate;
    if (!appStartFirstPageShowDate || !appEndFirstPageShowDate) {
        return nil;
    }
    NSTimeInterval start = [appStartFirstPageShowDate timeIntervalSince1970];
    NSTimeInterval end = [appEndFirstPageShowDate timeIntervalSince1970];
    NSTimeInterval def = end - start;
    NSString *duration = [NSString stringWithFormat:@"%.0lf",def*1000];
    return duration;
}

@end
