//
//  SDSNewYorkRegisterVC.m
//  SDS-2014-2015
//
//  Created by Blake Crosley on 9/1/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSNewYorkRegisterVC.h"

@interface SDSNewYorkRegisterVC ()


@end

@implementation SDSNewYorkRegisterVC
@synthesize nycRegisterWV;


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

    NSString *fullURL = @"https://www.eventbrite.com/e/soul-de-soul-dance-convention-new-york-city-ny-registration-12265397133";
    // NSString *fullURL = @"https://twitter.com/souldesoul";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [nycRegisterWV loadRequest:requestObj];

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
