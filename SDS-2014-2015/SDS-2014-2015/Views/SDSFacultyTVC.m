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
@property (nonatomic, strong) NSArray *teacherImagesLarge;
@property (nonatomic, strong) NSArray *teacherBio;
@end

@implementation SDSFacultyTVC
@synthesize teacherNames        = _teacherNames;
@synthesize teacherImages       = _teacherImages;
@synthesize teacherImagesLarge  = _teacherImagesLarge;
@synthesize teacherBio          = _teacherBio;

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
    self.teacherImagesLarge = [[NSArray alloc]
                          initWithObjects:
                          @"luam",
                          @"jenn",
                          @"teddy",
                          @"justine",
                          @"audrey",
                          @"mackenzie",
                          @"hilary",
                          @"alex",
                          @"victoria",
                          @"sarah",
                          @"amelia",
                          @"cj",
                          @"lynse",
                          @"cameron",
                          @"giovanni",
                          @"kelly",
                          nil];
    self.teacherBio = [[NSArray alloc]
                          initWithObjects:
                          @"luam-30",
                          @"jenn-30",
                          @"teddy-30",
                          @"justine-30",
                          @"audrey-30",
                          @"mackenzie-30",
                          @"hilary-30",
                          @"Born in New Orleans, La, Alex Larson Picked up and Moved with His Family at 6 years-old to the Suburbs of Northern California. Years Later at the Age of 13, He Watched the Film Beat Street, Which Changed His World Forever, and an Unknown Hidden Passion for Dance Quickly Surfaced. He Began to Train as a B-boy at the Local Dance Studio Named Dance Connection in Concord, Ca. As He Reached High School, He Began to Focus More on Training in Hip-hop Choreography and Dancing in Local Showcases and Competitions. When Alex Turned 19- Years-old, He Was given the Opportunity to Attend His First Los Angeles Audition. He Realized in That Eye-opening Experience That He Had to Be in La to Fully Pursue His Dream as a Dancer and Choreographer. Just Months Later, He Packed up and Moved to Los Angeles, Ca. Since Moving to La, Alex Has Been Blessed to Work with Such Artists as Ciara, the Spice Girls, Ne-yo, Beyonce, and Cheryl Cole, as Well as Performing on Live Shows Such as America's Best Dance Crew, Victoria’s Secret Fashion Show and the Grammy’s Just to Name a Few. He Has Taught Classes at Renowned Studios Including Millennium Dance Complex, Debbie Reynolds and Ida Hollywood. Also, He Has Trained under Top Choreographers and Directors like Jamie King, Brian Friedman, Fatima Robinson, Frank Gatson and Rich & Tone. He Continues Feed His Passion for Dance by Traveling Around the World Dancing, Teaching and Choreographing.",
                          @"victoria-30",
                          @"sarah-30",
                          @"amelia-30",
                          @"cj-30",
                          @"lynse-30",
                          @"cameron-30",
                          @"giovanni-30",
                          @"kelly-30",
                          nil];
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
        
        detailViewController.teacherDetailModel = @[_teacherNames[row], _teacherImagesLarge[row], _teacherBio[row]];
    }
}

@end
