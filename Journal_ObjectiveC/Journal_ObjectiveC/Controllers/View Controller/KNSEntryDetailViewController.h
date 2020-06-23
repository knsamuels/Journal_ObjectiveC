//
//  KNSEntryDetailViewController.h
//  Journal_ObjectiveC
//
//  Created by Kristin Samuels  on 6/22/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KNSEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface KNSEntryDetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (strong, nonatomic) IBOutlet UITextView *entryBodyTextView;

@property (nonatomic, strong)KNSEntry *entry;

@end

NS_ASSUME_NONNULL_END
