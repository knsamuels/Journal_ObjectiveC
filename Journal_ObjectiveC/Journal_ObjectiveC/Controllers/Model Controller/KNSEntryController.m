//
//  KNSEntryController.m
//  Journal_ObjectiveC
//
//  Created by Kristin Samuels  on 6/22/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

#import "KNSEntryController.h"
#import "KNSEntry.h"

@implementation KNSEntryController

+ (KNSEntryController *)shared
{
    static KNSEntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [KNSEntryController new];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

-(void)addEntry:(NSString *)title text:(NSString *)text
{
    KNSEntry *newEntry = [[KNSEntry alloc] initWithTitle:title text:text];
    [_entries addObject:newEntry];
}

- (void)updateEntry:(KNSEntry *)entry text:(NSString *)text title:(NSString *)title
{
    entry.title = title;
    entry.text = text;
}

-(void)removeEntry:(KNSEntry *)entry
{
    [_entries removeObject:entry];
}
@end
