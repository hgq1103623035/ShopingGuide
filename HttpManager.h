//
//  HttpManager.h
//  ShopingGuide
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpManager : NSObject


+(void)getMainCompletion:(void(^)(id data))complete;

@end
