//
//  Language.m
//  hw2
//
//  Created by MIAFOREVER on 2019/9/10.
//  Copyright © 2019 MIAFOREVER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Language.h"

@implementation Language
- (id)init{
    progress_tour = 1;
    progress_unit = 0;
    date_ = [NSDate date];
    self = [super init];
    return self;
}
- (void)learnOneUnit
{
    NSString *name;
    NSInteger id_ = arc4random() % 3;
    if(id_ == 0)
    {
        name = @"张三";
    }
    else if(id_ == 1)
    {
        name = @"李四";
    }
    else
    {
        name = @"王五";
    }
    while(![self isFinish])
    {
        progress_unit ++;
        if(progress_unit == 5)
        {
            progress_unit -= 5;
            progress_tour ++;
        }
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
        NSLog(@"%@ %@ 学习%@ tour %li unit %li", name, [dateFormatter stringFromDate:date_], [self getName], progress_tour, progress_unit);
        date_ = [NSDate dateWithTimeInterval:  (arc4random() % 5 + 1) * 86400 sinceDate:date_];
    }
}
- (NSInteger)getTour
{
    return progress_tour;
}
- (NSInteger)getUnit
{
    return progress_unit;
}
- (bool)isFinish
{
    if(progress_tour == 8 && progress_unit == 4)
    {
        return true;
    }
    else
    {
        return false;
    }
}
- (NSString *)getName
{
    return @"";
}

@end

@implementation English
- (NSString *)getName
{
    return @"英语";
}
@end
@implementation Japanese
- (NSString *)getName
{
    return @"日语";
}
@end
@implementation German
- (NSString *)getName
{
    return @"德语";
}
@end
@implementation Spanish
- (NSString *)getName
{
    return @"西班牙语";
}
@end

