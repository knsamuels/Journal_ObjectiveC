//
//  KNSEntryController.h
//  Journal_ObjectiveC
//
//  Created by Kristin Samuels  on 6/22/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KNSEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface KNSEntryController : NSObject

@property(nonatomic, strong) NSMutableArray *entries;

- (void)addEntry:(NSString *)title text:(NSString *)text;
- (void)removeEntry:(KNSEntry *)entry;
- (void)updateEntry:(KNSEntry *)entry text:(NSString *)text title:(NSString *)title;

+ (KNSEntryController *) shared;

@end

NS_ASSUME_NONNULL_END
