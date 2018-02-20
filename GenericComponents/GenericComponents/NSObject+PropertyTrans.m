//
//  NSObject+PropertyTrans.m
//  GenericComponents
//
//  Created by kipen on 2018/2/20.
//  Copyright © 2018年 kipen. All rights reserved.
//

#import "NSObject+PropertyTrans.h"

@implementation NSObject (PropertyTrans)

+(void)propertyTransform:(NSDictionary *)dic{
    
    [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        //        NSLog(@"%@---%@",key,[obj class]);
        
        if ([obj isKindOfClass:NSClassFromString(@"__NSCFString")]) {
            
            NSLog(@"%@",[NSString stringWithFormat:@"@property (nonatomic,strong) NSString * %@;",key]);
        } else if([obj isKindOfClass:NSClassFromString(@"__NSCFNumber")]){
            NSLog(@"%@",[NSString stringWithFormat:@"@property (nonatomic,assign) int %@;",key]);
        } else if([obj isKindOfClass:NSClassFromString(@"__NSCFArray")]){
            NSLog(@"%@",[NSString stringWithFormat:@"@property (nonatomic,copy) NSArray * %@;",key]);
        } else if([obj isKindOfClass:NSClassFromString(@"__NSCFDictionary")]){
            NSLog(@"%@",[NSString stringWithFormat:@"@property (nonatomic,strong) NSDictionary * %@;",key]);
        }
    }];
}


@end
