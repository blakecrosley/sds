//
//  SDSBaseTableViewController.m
//  Soul de Soul
//
//  Created by Blake Crosley on 10/10/15.
//  Copyright © 2015 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSBaseTableViewController.h"

@interface SDSBaseTableViewController ()

@end

@implementation SDSBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]];
}

@end
