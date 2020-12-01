//
//  CTMediator+ModuleB.h
//  ModuleBCategory
//
//  Created by peixu on 2020/12/1.
//  Copyright © 2020 peixu. All rights reserved.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleB)

// 这里暴露中间件调度方法，主要供其他业务模块调用，可以传递所需的业务参数或者回调

// 例如：
// 这里传递的是一个回调事件
- (UIViewController *)ModuleB_viewControllerWithCallBack:(void(^)(NSString *result))callBack;

// 这里传递的是一个字符串
- (UIViewController *)ModuleB_viewContrllerWithText:(NSString *)contentText;

@end

NS_ASSUME_NONNULL_END
