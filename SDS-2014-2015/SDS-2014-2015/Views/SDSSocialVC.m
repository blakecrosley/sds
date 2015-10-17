//
//  SDSSocialVC.m
//  SDS-2014-2015
//
//  Created by Blake Crosley on 8/31/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSSocialVC.h"

@interface SDSSocialVC ()

@end

@implementation SDSSocialVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Event Handlers

- (IBAction)instagramTUI:(id)sender {
    [self navigateToURL:[NSURL URLWithString:@"https://www.instagram.com/souldesoul"]];
}

- (IBAction)facebookTUI:(id)sender {
    [self navigateToURL:[NSURL URLWithString:@"https://www.facebook.com/souldesoul.dance"]];
}

- (IBAction)twitterTUI:(id)sender {
    [self navigateToURL:[NSURL URLWithString:@"https://www.twitter.com/souldesoul"]];
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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
