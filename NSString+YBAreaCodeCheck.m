//
//  NSString+YBAreaCodeCheck.m
//  category
//
//  Created by LYB on 16/6/28.
//  Copyright © 2016年 LYB. All rights reserved.
//

#import "NSString+YBAreaCodeCheck.h"

@implementation NSString_YBAreaCodeCheck

- (AreaCodeType)yb_checkAreaCode
{
    NSString *ProStr = @"^0(10|2[0-9])$";
    NSPredicate *regextestPro = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", ProStr];
    BOOL res1 = [regextestPro evaluateWithObject:self];
    
    NSString *CityStr = @"^0\\d{3}$";
    NSPredicate *regextestCity = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CityStr];
    BOOL res2 = [regextestCity evaluateWithObject:self];
    if (res1) {
        return AreaCodeTypeForProvince;
    }else if (res2) {
        return AreaCodeTypeForCity;
    }else{
        return AreaCodeTypeForNone;
    }
}

@end
