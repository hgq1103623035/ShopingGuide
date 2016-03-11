//
//  Luxuries.m
//  ShopingGuide
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "Luxuries.h"

@implementation Luxuries


- (id)initLuxuriesInfoWithDictionary:(NSDictionary* )dic
{
    self = [super init];
    if (self)
    {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
+ (id)getLuxuriesWithDictionary:(NSDictionary* )dic
{
    return [[self alloc]initLuxuriesInfoWithDictionary:dic];
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}


@end
