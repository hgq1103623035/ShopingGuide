//
//  MainModel.h
//  ShopingGuide
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainModel : NSObject

@property(nonatomic,retain)NSString * imageURL, * categoryName, * categoryInfo;
- (id)initMainInfoWithDictionary:(NSDictionary* )dic;
+ (id)getMainWithDictionary:(NSDictionary* )dic;


@end
