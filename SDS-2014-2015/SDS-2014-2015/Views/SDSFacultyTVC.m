//
//  SDSFacultyTVC.m
//  SDS 2014-2015
//
//  Created by Blake Crosley on 7/13/14.
//  Copyright (c) 2014 SoulDeSoul, LLC. All rights reserved.
//

#import "SDSFacultyTVC.h"
#import "SDSTeacherTVCell.h"
#import "SDSTeacherProfileVC.h"

@interface SDSFacultyTVC ()
@property (nonatomic, strong) NSArray *teacherNames;
@property (nonatomic, strong) NSArray *teacherImages;
@end

@implementation SDSFacultyTVC
@synthesize teacherNames = _teacherNames;
@synthesize teacherImages = _teacherImages;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.teacherNames = [[NSArray alloc]
                     initWithObjects:
                         @"Luam",
                         @"Jenn Freeman",
                         @"Teddy Tedholm",
                         @"Justine Menter",
                         @"Audrey Case",
                         @"Mackenzie Crosley",
                         @"Hilary McAlister",
                         @"Alex Larson",
                         @"Victoria Brown",
                         @"Sarah - Katarina \"SKooJ CorE-O\"",
                         @"Amelia Lowe",
                         @"CJ Edwards",
                         @"Lynse Iwersen",
                         @"Cameron\"Misfit\" Graham",
                         @"Giovanni Allan",
                         @"Kelly Stevens",
                         nil];
    
    self.teacherImages = [[NSArray alloc]
                      initWithObjects:
                          @"luam-30",
                          @"jenn-30",
                          @"teddy-30",
                          @"justine-30",
                          @"audrey-30",
                          @"mackenzie-30",
                          @"hilary-30",
                          @"alex-30",
                          @"victoria-30",
                          @"sarah-30",
                          @"amelia-30",
                          @"cj-30",
                          @"lynse-30",
                          @"cameron-30",
                          @"giovanni-30",
                          @"kelly-30",
                          nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName = @"Faculty";
    return sectionName;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.teacherNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"teacherTableCell";
    
    SDSTeacherTVCell *cell = [tableView
                              dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[SDSTeacherTVCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.teacherNameLabel.text = [self.teacherNames objectAtIndex: [indexPath row]];

    
    UIImage *teacherImage = [UIImage imageNamed: [self.teacherImages objectAtIndex: [indexPath row]]];
    
    cell.teacherImage.image = teacherImage;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowTeacherDetails"])
    {
        SDSTeacherProfileVC *detailViewController =
        [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView
                                    indexPathForSelectedRow];
        
        long row = [myIndexPath row];
        
        detailViewController.teacherDetailModel = @[_teacherNames[row], _teacherImages[row]];
    }
}

@end
