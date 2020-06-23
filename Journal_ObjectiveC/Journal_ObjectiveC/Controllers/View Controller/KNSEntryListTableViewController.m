//
//  KNSEntryListTableViewController.m
//  Journal_ObjectiveC
//
//  Created by Kristin Samuels  on 6/22/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

#import "KNSEntryListTableViewController.h"
#import "KNSEntryDetailViewController.h"
#import "KNSEntryController.h"

@interface KNSEntryListTableViewController ()

@end

@implementation KNSEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[KNSEntryController shared] entries] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    KNSEntry *entry = KNSEntryController.shared.entries[indexPath.row];
    cell.textLabel.text = entry.title;
//   cell.detailTextLabel.text = entry.timestamp;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        KNSEntry *entryToDelete = KNSEntryController.shared.entries[indexPath.row];
        [KNSEntryController.shared removeEntry:entryToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toViewEntry"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        KNSEntry *entry = [KNSEntryController shared].entries[indexPath.row];
        KNSEntryDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.entry = entry;
    }
}
@end
