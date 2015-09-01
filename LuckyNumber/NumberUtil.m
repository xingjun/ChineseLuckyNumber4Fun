//
//  NumberUtil.m
//  LuckyNumber
//
//  Created by 杏菌 on 15/9/2245.
//  Copyright (c) 2015年 xingjun. All rights reserved.
//

#import "NumberUtil.h"

@implementation NumberUtil
+ (NSString *)totalStr {
    NSString *path = [[NSBundle mainBundle]pathForResource:@"NumbersString" ofType:nil];
   NSData *data =  [[NSFileManager defaultManager] contentsAtPath:path];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
+ (NSString *)find80:(int)num {
   return [self findNum:80 withRaw:num];
}
+ (NSString *)find81:(int)num {
    return [self findNum:81 withRaw:num];
}
+ (NSString *)findNum:(int)num withRaw:(int)raw {
    printf("\n find%d:-> %d",num,raw % num);
    return [NumberUtil findStringWithNum:raw % num];
}
+ (NSString *)findStringWithNum:(int)num {
    NSString *filter = [NSString stringWithFormat:@"%d",num];
    NSString *origin = [NumberUtil totalStr];
    NSRange range = [origin rangeOfString:filter];
    range.location += range.length;
    range.length = 250;
    
    return [origin substringWithRange:range];
}
@end
