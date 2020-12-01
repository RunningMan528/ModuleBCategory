//
//  CTMediator+ModuleB.m
//  ModuleBCategory
//
//  Created by peixu on 2020/12/1.
//  Copyright © 2020 peixu. All rights reserved.
//

#import "CTMediator+ModuleB.h"

@implementation CTMediator (ModuleB)

- (UIViewController *)ModuleB_viewControllerWithCallBack:(void (^)(NSString * _Nonnull))callBack{
    // 组装B模块需要的参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"callBack"] = callBack;
    return [self performTarget:@"ModuleB" action:@"viewController" params:params shouldCacheTarget:NO];
}

- (UIViewController *)ModuleB_viewContrllerWithText:(NSString *)contentText{
    // 组装B模块需要的参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"contentText"] = contentText;
    return [self performTarget:@"ModuleB" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
