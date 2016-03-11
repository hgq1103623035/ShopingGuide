//
//  HttpManager.m
//  ShopingGuide
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "HttpManager.h"
#import "AFNetworking.h"
#import "MainModel.h"

@implementation HttpManager



+(void)getMainCompletion:(void(^)(id data))complete
{

    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSString * url = @"http://appcms.m2lux.com/interface/GetCategory.php";
    [session GET:url parameters:nil success:^(NSURLSessionDataTask *task, id responseObject)
    {
        NSLog(@"成功");
        
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        for (NSDictionary * dic in responseObject)
        {
            MainModel * main = [MainModel getMainWithDictionary:dic];
            [dataArray addObject:main];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"失败");
    }];
   

}
@end
