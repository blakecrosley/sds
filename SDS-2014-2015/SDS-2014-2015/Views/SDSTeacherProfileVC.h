//
//  SDSTeacherProfileVC.h
//  SDS-2014-2015
//
//  Created by Blake Crosley on 7/19/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDSTeacherProfileVC : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *teacherImage;
@property (strong, nonatomic) IBOutlet UILabel *teacherNameLabel;
@property (strong, nonatomic) IBOutlet UITextView *teacherBio;
@property (strong, nonatomic) IBOutlet UIImageView *teacherImageBlurred;
@property (strong, nonatomic) NSArray *teacherDetailModel;
@end
