//
//  SDSTeacherProfileVC.m
//  SDS-2014-2015
//
//  Created by Blake Crosley on 7/19/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSTeacherProfileVC.h"

@interface SDSTeacherProfileVC ()
@property (nonatomic, strong) IBOutlet UIScrollView *teachBioScrollView;
@end

@implementation SDSTeacherProfileVC
@synthesize teachBioScrollView;

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
    
    self.teacherNameLabel.text = self.teacherDetailModel[0];
    self.teacherImage.image = [UIImage imageNamed: self.teacherDetailModel[1]];
    self.teacherBio.text = self.teacherDetailModel[2];
    self.teacherImageBlurred.image = [UIImage imageNamed: self.teacherDetailModel[3]];
    
    [self.teacherBio setFont:[UIFont systemFontOfSize:16.0]];
    
//    teachBioScrollView
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.teacherBio sizeToFit];
    CGSize contentSize = [self.teacherBio sizeThatFits:self.teacherBio.frame.size];
    
    self.teacherBio.frame = CGRectMake(self.teacherBio.frame.origin.x, self.teacherBio.frame.origin.y, contentSize.width, contentSize.height);

    CGSize containerSize = CGSizeMake(contentSize.width, contentSize.height + self.teacherBio.frame.origin.y + 100.0);
    self.teachBioScrollView.contentSize = containerSize;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
