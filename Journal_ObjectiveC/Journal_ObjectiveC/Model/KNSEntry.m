//
//  KNSEntry.m
//  Journal_ObjectiveC
//
//  Created by Kristin Samuels  on 6/22/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

#import "KNSEntry.h"

@implementation KNSEntry

-(instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
        _timestamp = [NSDate date];
    }
    return self;
}

@end
