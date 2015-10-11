//
//  SDSWebViewController.m
//  SDS-2014-2015
//
//  Created by Blake Crosley on 9/3/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSWebViewController.h"

@interface SDSWebViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *instagramWV;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *backButton;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *forwardButton;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *stopOrReloadButton;
@end

@interface SDSWebViewController (WebViewDelegate) <UIWebViewDelegate>

@end

@implementation SDSWebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.url = [NSURL URLWithString:@"https://www.instagram.com/souldesoul"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.instagramWV.delegate = self;
    self.instagramWV.opaque = NO;
    self.instagramWV.backgroundColor = [UIColor clearColor];
    
    UIView *titleView = self.navigationItem.titleView;
    if (titleView != nil && [titleView isKindOfClass:[UIImageView class]]){
        [((UIImageView*)titleView) setContentMode:UIViewContentModeCenter];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = @"Loading…";
    
    [self.instagramWV loadRequest:[NSURLRequest requestWithURL:self.url]];
}

#pragma mark - Properties

- (void)setUrl:(NSURL *)url
{
    self->_url = url;
    if (self.view.window){
        [self.instagramWV loadRequest:[NSURLRequest requestWithURL:url]];
    }
}

#pragma mark - Event Handlers

- (IBAction)stopOrReloadButton:(UIBarButtonItem*)sender
{
    if (self.instagramWV.isLoading){
        [self.instagramWV stopLoading];
        [sender setTitle:@"Reload"];
    } else {
        [self.instagramWV reload];
        [sender setTitle:@"Stop"];
    }
}

- (IBAction)backButtonTUI:(id)sender
{
    [self.instagramWV goBack];
}

- (IBAction)forwardButtonTUI:(id)sender
{
    [self.instagramWV goForward];
}

#pragma mark - View Lifecycle Methods

- (void)checkBrowserButtons
{
    self.forwardButton.enabled = self.instagramWV.canGoForward;
    self.backButton.enabled = self.instagramWV.canGoBack;
    if (self.instagramWV.isLoading){
        [self.stopOrReloadButton setTitle:@"Stop"];
    } else {
        [self.stopOrReloadButton setTitle:@"Reload"];
    }
}

@end

@implementation SDSWebViewController (WebViewDelegate)

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self checkBrowserButtons];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [[MBProgressHUD HUDForView:self.view] removeFromSuperview];
    [self checkBrowserButtons];
}

@end
