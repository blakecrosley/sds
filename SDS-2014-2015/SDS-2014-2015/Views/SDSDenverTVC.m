//
//  SDSDenverTVC.m
//  Soul de Soul
//
//  Created by Blake Crosley on 12/1/15.
//  Copyright © 2015 Soul de Soul, LLC. All rights reserved.
//

#import "SDSDenverTVC.h"

@interface SDSDenverTVC ()

@end

@implementation SDSDenverTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)navigateToURL:(NSURL*)url
{
    SDSWebViewController *webVC = [[SDSWebViewController alloc] initWithNibName:@"SDSWebViewController" bundle:nil];
    webVC.url = url;
    [self.navigationController pushViewController:webVC animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch(indexPath.row) {
        case 0:
            [self navigateToURL:[NSURL URLWithString:@"https://eleve.io/schedules/denver_intermediate"]];
            break;
        case 1:
            [self navigateToURL:[NSURL URLWithString:@"https://eleve.io/schedules/denver_advanced"]];
            break;
    }
}

@end
