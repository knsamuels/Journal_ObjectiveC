//
//  KNSEntryDetailViewController.m
//  Journal_ObjectiveC
//
//  Created by Kristin Samuels  on 6/22/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

#import "KNSEntryDetailViewController.h"
#import "KNSEntry.h"
#import "KNSEntryController.h"


@interface KNSEntryDetailViewController ()

@end

@implementation KNSEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    
    _entryTitleTextField.delegate = self;
}

- (void)updateViews
{
    if (!self.entry) return;
    
    self.entryTitleTextField.text = self.entry.title;
    self.entryBodyTextView.text = self.entry.text;
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender
{
    NSString * entryTitle = _entryTitleTextField.text;
    NSString * bodyText = _entryBodyTextView.text;
    if (_entry)
    {
        [KNSEntryController.shared updateEntry:_entry text:bodyText title:entryTitle];
    } else {
        [KNSEntryController.shared addEntry:entryTitle text:bodyText];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(UIButton *)sender
{
    self.entryTitleTextField.text = @"";
    self.entryBodyTextView.text = @"";
}

- (void) updateViewWithEntry:(KNSEntry *)entry
{
    _entryTitleTextField.text = entry.title;
    _entryBodyTextView.text = entry.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return true;
}
- (void)setEntry:(KNSEntry *)entry
{
    if (entry != _entry) {
        _entry = entry;
        [self updateViews];
    }
}

@end
