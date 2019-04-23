//
//  MCUserDefaultTool.h
//  NetworkSummary
//
//  Created by gjfax on 2019/4/23.
//  Copyright © 2019 macheng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MCUserDefaultTool : NSObject
+ (void)setObject:(id)value forKey:(NSString *)defaultName;

+ (id)objectForKey:(NSString *)defaultName;

+ (void)setValue:(id)value forKey:(NSString *)defaultName;

+ (id)valueForKey:(NSString *)defaultName;

+(void)removeObjectForKey:(NSString*)key;

+(void)clearAll;
@end

NS_ASSUME_NONNULL_END
