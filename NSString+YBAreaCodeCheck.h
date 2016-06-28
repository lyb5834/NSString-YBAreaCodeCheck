//
//  NSString+YBAreaCodeCheck.h
//  category
//
//  Created by LYB on 16/6/28.
//  Copyright © 2016年 LYB. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  区号类型
 */
typedef NS_ENUM(NSInteger,AreaCodeType) {
    /**
     *  省（010，020。。）
     */
    AreaCodeTypeForProvince = 0,
    /**
     *  市（0513，0514。。）
     */
    AreaCodeTypeForCity,
    /**
     *  不匹配
     */
    AreaCodeTypeForNone
};

@interface NSString_YBAreaCodeCheck : NSObject

/**
 *  检测区号
 *
 *  @return 区号类型
 */
- (AreaCodeType)yb_checkAreaCode;

@end
