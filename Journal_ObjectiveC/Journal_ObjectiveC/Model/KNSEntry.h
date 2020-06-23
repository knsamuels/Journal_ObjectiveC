//
//  KNSEntry.h
//  Journal_ObjectiveC
//
//  Created by Kristin Samuels  on 6/22/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KNSEntry : NSObject

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *text;
@property (nonatomic, copy, readwrite) NSDate *timestamp;

- (instancetype)
initWithTitle:(NSString *)title text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
