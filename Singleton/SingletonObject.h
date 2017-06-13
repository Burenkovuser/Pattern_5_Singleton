//
//  SingletonObject.h
//  Singleton
//
//  Created by Vasilii on 13.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject

@property(nonatomic, weak) NSString *tempProperty;


+(SingletonObject *) singleton;

@end
