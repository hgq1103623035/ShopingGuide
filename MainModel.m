//
//  MainModel.m
//  ShopingGuide
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "MainModel.h"

@implementation MainModel

-(id)initMainInfoWithDictionary:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];
    }

    return self;


}

+(id)getMainWithDictionary:(NSDictionary *)dic
{

    return [[self alloc]initMainInfoWithDictionary:dic];

}



- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}

@end
