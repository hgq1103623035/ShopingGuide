//
//  Luxuries.h
//  ShopingGuide
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Luxuries : NSObject

@property(nonatomic,strong)NSString * title, * summary, * imageURL, * content;
@property(nonatomic,assign)NSInteger imageWidth;
@property(nonatomic,assign)NSInteger imageHeight;
@property(nonatomic,assign)NSInteger articleType;
- (id)initLuxuriesInfoWithDictionary:(NSDictionary* )dic;
+ (id)getLuxuriesWithDictionary:(NSDictionary* )dic;


@end
