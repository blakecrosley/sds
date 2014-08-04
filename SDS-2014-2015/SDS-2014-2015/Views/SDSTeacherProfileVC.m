//
//  SDSTeacherProfileVC.m
//  SDS-2014-2015
//
//  Created by Blake Crosley on 7/19/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSTeacherProfileVC.h"

@interface SDSTeacherProfileVC ()
@end

@implementation SDSTeacherProfileVC

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
    
    _teacherNameLabel.text = _teacherDetailModel[0];
    _teacherImage.image = [UIImage imageNamed: _teacherDetailModel[1]];
    _teacherBio.text = _teacherDetailModel[2];
    [_teacherBio setFont:[UIFont systemFontOfSize:16.0]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
