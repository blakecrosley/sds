//
//  SDSRegisterVC.m
//  Soul de Soul
//
//  Created by Blake Crosley on 8/30/15.
//  Copyright (c) 2015 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSRegisterVC.h"

@interface SDSRegisterVC ()

@end

@implementation SDSRegisterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerTUI:(id)sender {
    [self navigateToURL:[NSURL URLWithString:@"https://eleve.io"]];
}

- (void)navigateToURL:(NSURL*)url
{
    SDSWebViewController *webVC = [[SDSWebViewController alloc] initWithNibName:@"SDSWebViewController" bundle:nil];
    webVC.url = url;
    [self.navigationController pushViewController:webVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
