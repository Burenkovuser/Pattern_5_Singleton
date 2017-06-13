//
//  SingletonObject.m
//  Singleton
//
//  Created by Vasilii on 13.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "SingletonObject.h"

@implementation SingletonObject


//использование GDC
/*
+(SingletonObject *) singleton
{
    static SingletonObject *singletonObject = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singletonObject = [[self alloc] init];
    });
    return singletonObject;
    }
 */

//без использования GDC
+(SingletonObject *) singleton {
    static SingletonObject *singletonObject = nil; @synchronized(self)
    {
        if (singletonObject == nil )
        {
            singletonObject = [[self alloc] init];
        } }
    return singletonObject; }

//МАКРОС!
/*
define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t pred = 0; \
__strong static id _sharedObject = nil; \
dispatch_once(&pred, ^{ \
    _sharedObject = block(); \ }); \
return _sharedObject; \
//Тогда сама реализация создания объекта будет выглядеть следующим образом:
+(SingletonObject *) singleton {
    DEFINE_SHARED_INSTANCE_USING_BLOCK(^{ return [[self alloc] init];
    }); }
*/
@end
