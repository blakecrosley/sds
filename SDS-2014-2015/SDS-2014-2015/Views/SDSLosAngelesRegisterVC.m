//
//  SDSLosAngelesRegisterVC.m
//  SDS-2014-2015
//
//  Created by Blake Crosley on 9/1/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSLosAngelesRegisterVC.h"

@interface SDSLosAngelesRegisterVC ()

@end

@implementation SDSLosAngelesRegisterVC
@synthesize laRegisterWV;

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

#pragma mark - Event Handlers
- (IBAction)registerNycTUI:(id)sender {
    [self navigateToURL:[NSURL URLWithString:@"http://www.eventbrite.com/e/soul-de-soul-dance-convention-los-angeles-ca-registration-12265405157"]];
}

- (void)navigateToURL:(NSURL*)url
{
    SDSWebViewController *webVC = [[SDSWebViewController alloc] initWithNibName:@"SDSWebViewController" bundle:nil];
    webVC.url = url;
    [self.navigationController pushViewController:webVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
