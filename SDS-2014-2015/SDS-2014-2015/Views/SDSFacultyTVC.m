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
                          @"Born in New Orleans, LA, Alex Larson picked up and moved with his family at 6-years-old to the suburbs of Northern California. Years later at the age of 13, he watched the film \"Beat Street\", which changed his world forever, and an unknown hidden passion for dance quickly surfaced. He began to train as a b-boy at the local dance studio named Dance Connection in Concord, CA. As he reached high school, he began to focus more on training in Hip-Hop Choreography and dancing in local showcases and competitions. When Alex turned 19-years-old, he was given the opportunity to attend his first Los Angeles audition. He realized in that eye-opening experience that he had to be in LA to fully pursue his dream as a dancer and choreographer. Just months later, he packed up and moved to Los Angeles, CA.\n\nSince moving to LA, Alex has been blessed to work with such artists as Ciara, The Spice Girls, Ne-Yo, Beyonce, and Cheryl Cole, as well as performing on live shows such as America’s Best Dance Crew, Victoria’s Secret Fashion Show and The Grammy’s just to name a few. He has taught classes at renowned studios including Millennium Dance Complex, Debbie Reynolds and IDA Hollywood. Also, he has trained under top choreographers and directors like Jamie King, Brian Friedman, Fatima Robinson, Frank Gatson and Rich & Tone. He continues feed his passion for dance by traveling around the world dancing, teaching and choreographing.",
                          @"victoria-30",
                          @"Sarah-Katarina \"SKooJ CorE-O\" brings her knowledge and talents with experience in performance, choreography, instruction, and adjudication. Her present focus is on Commercial/Theatrical Hip Hop and Contemporary dance, yet strongly trained in various styles such as Musical Theater, Jazz, and Modern. SKooJ is a graduate of Dean College with a Degree in Dance and Business Administration. After her two years at Dean, SKooJ traveled to Los Angeles, Tampa, and San Antonio to choreograph for studios but eventually came back to her Boston roots in 2009 and became part of The Jeannette Neills Dance Studio Faculty!\n\nSKooJ is the Lead Artistic Director of the Boston-based Static Noyze Dance Company (World Of Dance:NYC/NJ Champions and Carnival NYC Members), Convention Teacher for Turn It Up Dance Challenge, National Adjudicator for various competitions, and Guest Choreographer for studios throughout the country. In 2011 her work created the Boston Community Dance Project (BCDP), a professional collective expressing their passion of story telling through contemporary and fusion movements. BCDP’s work can be seen at the Massachusetts Dance Festival, NYC Dance Week, Boston Contemporary Dance Festival and more! Her talents have also been featured on the new HGTV series \"Spontaneous Construction\", NESN, and recently on The Dr. Oz Show!\n\nSKooJ CorE-O entered the Music Video with choreographing for International Pop Artist Tamara Rodriguez, Pop/R&B Artist Erene, and Lucia Marie's House of Blues Tour! Other music video credits include \"Digital Love\" by Makio, \"Dance With You\" by Bad Rabbits ft. Clinton Sparks, and Static Noyze Dance Company’s concept videos \"Dance You Of\"\n\nLastly, SKooJ partnered up with Salty Bovine Films with setting artistry for their past two short films ADONIS and MOSDEN while most recently showcased her acting talent in the unreleased 2014 movie Basic Math starring Cameron Diaz and Jason Segel.",
                          @"Amelia Lowe is most famously known for her time on So You Think You Can Dance Season 9 as a member of their top 20. In addition to this shemade it into the top 12, allowing her the opportunity to perform across thecountry with the So You Think You Can Dance tour. Since her time on the show, Amelia has appeared asa principal dancer in episodes of Boardwalk Empire. She's also been featured in multiple commercials including a nationwide commercialfor Wendy's, Target, the New York Stock Exchange, and American Express. Amelia got the chance to be a featured dancer at the premiere for The Great Gatsby. She also performed for emerging choreographer, Lindsay Nelko at the Capezio Ace Awards. She has also performed for choreographer Lane Napper at the Broadway Dance Center Student Performance Showcase.",
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

    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor blackColor];
    [cell setSelectedBackgroundView:bgColorView];
    
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
