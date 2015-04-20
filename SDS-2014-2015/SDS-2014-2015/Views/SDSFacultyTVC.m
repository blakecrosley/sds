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
@property (nonatomic, strong) NSArray *teacherImagesBlurred;
@end

@implementation SDSFacultyTVC
@synthesize teacherNames            = _teacherNames;
@synthesize teacherImages           = _teacherImages;
@synthesize teacherImagesLarge      = _teacherImagesLarge;
@synthesize teacherBio              = _teacherBio;
@synthesize teacherImagesBlurred    = _teacherImagesBlurred;

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
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]];
    self.teacherNames = [[NSArray alloc]
                     initWithObjects:
                         @"Luam",
                         @"Jenn Freeman",
                         @"Teddy Tedholm",
                         @"Justine Menter",
                         @"Audrey Case",
                         @"Kenzie Crosley",
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
                          @"With a youtube audience producing over 30 million views and a loyal following, Luam is a global sensation in dance. Though her choreography and artistic direction has brought her to artists and projects such as Beyonce, Rihanna, Robin Thicke, Kelly Rowland, Icona Pop, Janelle Monae, Britney Spears, Alicia Keys, Kanye, Reebok, John Legend, X Factor, American Idol, and more, she has obtained cult popularity among the dance community all over the world with her teachings and passion for spreading inspiration.You can see Luam on Beyonce\'s documentary special Year of 4 and she was also named Most Stylish New Yorker by Time Out NY magazine. Luam has been nominated twice for Best Choreography by Dance Track Magazine for her work in commercials and music videos. Most recently, she has received rave reviews for her work as Show Director and Choreographer for Alicia Keys world tour; and has also been kept busy by artists, commercials, & television shows such as Kelly Rowland, Carly Rae Jepsen, Calvin Klein, Macy\'s & America\'s Got Talent.\n\nLuam began dancing with African Rhythms Dance Company at University of Pennsylvania and Ballet Shango in Philadelphia before moving to NY (graduating with degree in Biological Basis of Behavior, double minors in Psychology & African American Studies). While working at AOLTimeWarner\'s Time Inc. in the Advanced Technology Group, she continued training at Broadway Dance Center and Djoniba Dance Center and eventually left her corporate and medical aspirations to pursue her dream of dance full time. In 2007, Luam also launched Wildchild Nation clothing line along with her business partners to a successful run until she left to remain co-founder in 2010.\n\nLuam encourages others to pursue their dreams with determination, humility, and hope in the face of difficult life decisions and choices.\"When you have a passion, there is no choice but to follow it, fight for it. Make it your life\'s work... because when you love what you do, you live in your destiny.\"",
                          @"Jenn Freeman is a dancer, teacher, and choreographer based out of New York City. Professionally, she has danced in works by choreographers: Sonya Tayeh, Mia Michaels, Kyle Abraham, Larry Keigwin, Brook Notary, Travis Wall, and many others. Jenn has appeared in live performances for Target, The MTV Video Music Awards, The Jimmy Fallon Show, Comedy Central\'s \"The Comedy Awards,\" and The Rolling Stone\'s 50th Anniversary Tour. She has assisted in the mounting of large scale productions for Florence and the Machine, Madonna, The X-Factor, LA Ballet, and Cirque du Soleil. She is currently a faculty member for Adrenaline, The Dance Sessions, and Broadway Dance Center. With a strong belief in dance education and a love for the creative process, Freeman\'s choreography and unique teaching style is enlisted and performed by companies, studios, and collegiate programs nationally. Jenn proudly holds a BFA in Dance from the TISCH School of the Arts at New York University.",
                          @"Teddy Tedholm is widely recognized as one of the most exciting new talents in dance. Often featured on the hit TV show So You Think You Can Dance, Teddy was declared \"crazy brilliant\" by judge Mary Murphy and called a \"genius\" by judge/choreographer Mia Michaels and executive producer Nigel Lythgoe.\n\nThe unique style of movement and obvious love of dance that mark his noteworthy performances have also made Teddy Tedholm a widely sought-after choreographer and teacher. For several years, Teddy has traveled the United States assisting major choreographers including Billy Larson, Erica Sobol and Emily Shock. He has taught at studios throughout the country, including Millennium Dance Complex in Los Angeles, California and Broadway Dance Center in New York City. In Los Angeles, Teddy is a member of Erica Sobol's collidEdance company.\n\nIn 2013, Teddy graduated with honors from the University of the Arts, under the direction of Donna Faye Burchfield. While in Philadelphia he produced much of his own work, including eleven:eleven, a self-produced full-evening work to great reviews. These achievements also led to him being awarded the University of the Arts’ Stella Moore Prize for Four Years of Outstanding Achievement. He was nominated for a World Dance Award in the category of Best Choreography Concert / Live Performance and most recently chosen as a finalist in the 2014 Capezio ACE Awards. He currently resides in New York City where he produces his own work. His work has been described as \"hip, whimsical and endearing, understated without a lot of bravura, but so entertaining. (Wet Paint)\"",
                          @"Justine Menter, originally from Dallas, TX, is a choreographer known for teachingKim Kardashian on Keeping Up the Kardashians and working with LMFAO. She has choreographed numerous live stage shows & music videos within the entertainment, music & fashion industries. In addition to credits like Faith Hill, Manny Pacquaio, Sephora, Sony, The View and Choreographer\'s Carnival, Justine co-found Flirt Dancers®, a dance-entertainment company performing all over Southern California & Vegas. Justine also excels as a performer, having worked with notable choreographers such as Brian Friedman, Derrell Bullock, Gina Starbuck & Kobi Rozenfeld. Justine is on faculty at International Dance Academy (IDA) Hollywood, a professional studio home to shows like SYTYCD & America\'s Best Dance Crew as well as conventions Turn it Up! Dance Challenge & Talent on Parade, and summer intensives Be Discovered, LA Dance Dream and more. She has also had the privilege of teaching internationally in Cape Town, South Africa and Mexico, as well as for Boogiezone.com. Passionate about inspiring the youth of today, she continues to teach, judge & set choreography all over the world.\n\nHer entrepreneurial spirit, unique musicality, and fresh, sassy approach to dance have earned Justine her notoriety. She currently resides in Los Angeles with representation by The S Agency (choreography/dance) & Bobby Ball Agency (commercial / print).",
                          @"Audrey case is from Edmond, OK. She started dancing at age 3 and trained in all styles from ballet to hip hop to jazz to contemporary at Kim Massay dance productions. She traveled on weekends to several conventions expanding her dance knowledge even further. In 2011 she attended adrenaline dance nationals and was given the title of miss adrenaline, where she would tour for the next year assisting wonderful teachers as the traveled the country. Early in 2012, she auditioned for Fox\'s so you think you can dance and continued on that show, becoming one of season 9\'s top ten finalists.  Following the shows finale, Audrey and the top 10 toured 30 cities performing for the country. She now lives in Los Angeles, CA and is continuing her dance career.",
                          @"Kenzie, an Oklahoma native, is a working dancer, performer, teacher and choreographer in Los Angeles. Her professional credits include music videos, back up dancing and performances with Missy Elliot, Polica, Sharaya, Sephora, Ceasar\'s Palace, LA\'s Choreographers Carnival, recording artists Hybrid Digital, Dez Cleo and Dario Benitez and rap artist Oh Blimey. She was a featured dancer and character for the hit web-series FLiRTv and recently as a dancer on the upcoming web series, Destroy the Alpha Gammas. Kenzie is a member of LA\'s elite professional jazz company, FLiRT Dancers and can be seen in the company\'s tri-annual full length company shows and in various performances around Los Angeles. She has performed all over the LA and Las Vegas areas, including hot spots like Club Nokia, the Roosevelt Hotel, San Diego Pride, Dim Mak Studios, Spot 5750, Rolling Stone Lounge, Falcon\'s Lounge and Avalon. She is represented for dance by The S Agency.\n\nHer training started at the age of 3 and she found her love of dance very early. She attended college on scholarship as a dance major at the University of Central Oklahoma. Her continued training includes completing a scholarship with Monsters of Contemporary and training with internationally acclaimed teachers and studios in Los Angeles and New York City.\n\nShe is the CEO & Co-Founder of Soul de Soul Dance Convention, where she also teaches on Faculty. She has been choreographing, teaching and directing in several states and numerous studios for over 10 years. She is a sought after master teacher, facilitating classes in Los Angeles, New York City, Boston and through-out the Mid-West. Her choreography has received Choreography Awards and her work has been featured on MyIndieLife.tv. Her distinctive movement style, technique and ear for music continue to bring her success in her endeavors as a dancer, teacher and choreographer.",
                          @"Hilary McAlister was born and raised in Oklahoma City where she fell in love with dance and knew from an early age she was created to move. She began teaching and choreographing at the young age of 14 under the guidance of CeCe Farha who was able to pin point Hilary\'s gifting early on. She attended the University of Central Oklahoma as a dance major on scholarship and continued her training at a summer intensive at Broadway Dance Center and Steps on Broadway.\n\nHilary is the COO and Co-Founder of Soul de Soul Dance Convention where she also teaches on Faculty. She currently resides in Edmond, Oklahoma and teaches full time at Studio J School of Dance. She has been teaching, choreographing, and performing for over 15 years. Hilary\'s ability to create a safe and honest learning environment along with her gift to tell a clear story through movement has her master classes and choreography highly sought after throughout the Mid-West, NYC, and Boston. Hilary\'s unique choreography has been recognized countless times both regionally and nationally. You can see some of Hilary\'s work featured on the Hall of Fame Dance Challenge website.\n\nHilary has been featured in PURE Magazine and Mommy\'s New Stage about her influence in the dance community. As well as back up dancing for ChurchBoy, a featured dancer in numerous musical theater productions in the Oklahoma area, and assisting for OKLA Dance Convention. Tearstained Dance Company which Hilary created and directed was the featured guest performer for PURE magazine\'s launch party.\n\nHilary knows that dance is the rhythm every person is born with; therefore, people dance alone, dance with, and or dance for something. The experience, feel, and emotion of dance, is what drives Hilary to express her heart through dance. With this understanding, Hilary hopes to touch, inspire, move, and encourage not only the dancers but the audience as well. She believes dance is the language of the soul, which can move us to feel and experience something greater than ourselves and she feels blessed to be able to contribute to our world with something as beautiful as dance.",
                          @"Born in New Orleans, LA, Alex Larson picked up and moved with his family at 6-years-old to the suburbs of Northern California. Years later at the age of 13, he watched the film \"Beat Street,\" which changed his world forever, and an unknown hidden passion for dance quickly surfaced. He began to train as a b-boy at the local dance studio named Dance Connection in Concord, CA. As he reached high school, he began to focus more on training in hip-hop choreography and dancing in local showcases and competitions. When Alex turned 19-years-old, he was given the opportunity to attend his first Los Angeles audition. He realized in that eye-opening experience that he had to be in LA to fully pursue his dream as a dancer and choreographer. Just months later, he packed up and moved to Los Angeles, CA.\n\nSince moving to LA, Alex has been blessed to work with such artists as Ciara, the spice girls, Ne-Yo, Beyonce, and Cheryl Cole, as well as performing on live shows such as America’s Best Dance Crew, Victoria’s Secret Fashion Show and the Grammy’s just to name a few. He has taught classes at renowned studios including Millennium Dance Complex, Debbie Reynolds and IDA Hollywood. Also, he has trained under top choreographers and directors like Jamie king, Brian Friedman, Fatima Robinson, frank Gatson and Rich & Tone. He continues to feed his passion for dance by traveling around the world dancing, teaching and choreographing.",
                          @"Victoria Brown has over 15 years of training in contemporary, jazz, hip-hop, and ballet. Victoria holds a BA in Dance with a Minor in Business from San Jose State University. She also graduated from the Broadway Dance Center Fall 2006 Internship program and The Historic Jacobs Pillow Summer Dance Intensive 2005. Victoria has taught and choreographed for various dance studios and companies around the United States including Boogie Zone and Soul de Soul Dance Convention. Professional choreography includes: Forever 21 Back to School Campaign, Phil Beaudreau's \"Won't Get Away\" video, Bad Girls Club Season 8, IcyLytes \"Dark\" music video, DeeJay Jounce \"Get Your Feet Up\" music video, \"Oh La La\" music video Sherryce, Hell and Lula \"Quidam\" music video, DAMSF Showcase, POSERS, MAX\'ED OUT, Choreographers Ball Toronto, Canada, 15 Minutes of FAME Movie Premier, Moving Through Keys TV Pilot and NBAD Anaheim Arsenal A-list dance Team. She has also performed in numerous shows such as: Las Vegas Annual International Concert, Stop Revolt music video, Bow Wow as feat. in Omarion \"Girlfriend\" music video, Nelly feat. Fergie in \"Party People\" music video, NBAD Anaheim Arsenal A-list Dance team, and America\'s Got Talent finalist All Wheel Extreme Sports Entertainment.\n\nShe is currently Co-Artist Director of MashUp Contemporary Dance Company, Dance Teacher and Artistic Director of the Academy of Music & Dance in Pasadena, CA, and a Dance Coach for Mira Costa High School.",
                          @"Sarah-Katarina \"SKooJ CorE-O\" brings her knowledge and talents with experience in performance, choreography, instruction, and adjudication. Her present focus is on Commercial / Theatrical Hip Hop and Contemporary dance, yet strongly trained in various styles such as Musical Theater, Jazz, and Modern. SKooJ is a graduate of Dean College with a Degree in Dance and Business Administration. After her two years at Dean, SKooJ traveled to Los Angeles, Tampa, and San Antonio to choreograph for studios but eventually came back to her Boston roots in 2009 and became part of The Jeannette Neills Dance Studio Faculty!\n\nSKooJ is the Lead Artistic Director of the Boston-based Static Noyze Dance Company (World Of Dance: NYC / NJ Champions and Carnival NYC Members), Convention Teacher for Turn It Up Dance Challenge, National Adjudicator for various competitions, and guest choreographer for studios throughout the country. In 2011 her work created the Boston Community Dance Project (BCDP), a professional collective expressing their passion of story telling through contemporary and fusion movements. BCDP’s work can be seen at the Massachusetts Dance Festival, NYC Dance Week, Boston Contemporary Dance Festival and more! Her talents have also been featured on the new HGTV series \"Spontaneous Construction,\" NESN, and recently on The Dr. Oz Show!\n\nSKooJ CorE-O entered the Music Video with choreographing for International Pop Artist Tamara Rodriguez, Pop / R&B Artist Erene, and Lucia Marie's House of Blues Tour! Other music video credits include \"Digital Love\" by Makio, \"Dance With You\" by Bad Rabbits ft. Clinton Sparks, and Static Noyze Dance Company’s concept videos \"Dance You Off\"\n\nLastly, SKooJ partnered up with Salty Bovine Films with setting artistry for their past two short films ADONIS and MOSDEN while most recently showcased her acting talent in the unreleased 2014 movie Basic Math starring Cameron Diaz and Jason Segel.",
                          @"Amelia Lowe is most famously known for her time on So You Think You Can Dance Season 9 as a member of their top 20. In addition to this shemade it into the top 12, allowing her the opportunity to perform across thecountry with the So You Think You Can Dance tour. Since her time on the show, Amelia has appeared asa principal dancer in episodes of Boardwalk Empire. She's also been featured in multiple commercials including a nationwide commercialfor Wendy's, Target, the New York Stock Exchange, and American Express. Amelia got the chance to be a featured dancer at the premiere for The Great Gatsby. She also performed for emerging choreographer, Lindsay Nelko at the Capezio Ace Awards. She has also performed for choreographer Lane Napper at the Broadway Dance Center Student Performance Showcase.",
                          @"Mr. CJ Edwards (MRCJE) is a professional dancer / choreographer, instructor and student of dance. CJ started dancing in high school where he grew up, in a small city of Victorville, Ca. In college he danced in the local dance community with teams such as Team Millennia and BoogieZone Breed. Professionally CJ has danced and worked with Omarion, Andre Mieux and was featured on Season 5 of MTV\'s America\'s Best Dance Crew with the crew, \"Heavy Impact.\" CJ has choreographed for many local dance teams, studios as well as professional companies like: Dance Mob Nation, IBM, ABC News, EXTRA, Yahoo News and the Latin Grammy\'s Promotional Tour-Verizon Fios TV. He has also danced internationally in Wenzhou, China on a dance tour and Chiangmai Thailand for missions spreading the gospel of Jesus Christ. Currently CJ teaches a \"Hip Hop Soul\" class weekly at the  Word in Motion Dance Studio in North Hollywood. He also serves with Word in Motion Dance Ministry from The Underground Church and directs a professional men’s dance company called The ReCipE Men. However, from the community, small stage and national television CJ\'s goal is to use his gifts to glorify God and inspire / help change the world!",
                          @"Lynse has been dancing and performing since the age of 2. She has been a teacher and choreographer in her family operated studio, DMC Dance, for the past 11 years. Lynse has taken from some of the worlds most renowned choreographers in the world, like Mia Michaels and Wade Robson, Hui Cha Poos and Robin Conners. She has been in shows such as the Nutcracker, 24 consecutive recitals, and countless charity events.\n\nAt DMC, Lynse is the competition coordinator, where she has won multiple choreography awards, as well as awards for costume design, creativity, and overall awards. Lynse is a proud wife of Steven Iwersen and they have a rockstar son, three year old named Kiesen.",
                          @"Born in Los Angeles, CA, Cameron was always an entertainer at heart. Growing up in the Compton, CA area of Los Angeles, he was fascinated with the dance moves of Michael Jackson as well as Usher, and Omarion and wanted to move just like they did. At the age of 15, after seeing the movie \"You Got Served\" he took notice of world known choreographer Dave Scott and decided to get into hip hop dance more. He later moved to Missouri after the loss of his cousin whom he was close with. He began taking dance more seriously and joined a dance crew that formed at his high school. After winning talent shows, and dance contest and performing for local hip hop artist, Cameron decided to take his dance passion to the next level. At the age of 21 he moved to Oklahoma City, OK to learn contemporary and hip hop from Emily Shock and Destini Rogers. A year later he began teaching dance classes, and soon formed the dance crew / company known as Band Of Misfits.\n\nSoon after, Cameron traveled the states learning and teaching. As well as going overseas to China to dance and teach. He and the Band Of Misfits have accomplished quite a bit within the 3 years of when they started. Cameron has been able to showcase some of his talents in events such as Kollaboration Tulsa which was the very first for Oklahoma, World Of Dance Dallas and also for Chris Brown and the F.A.M.E tour, and co-choreographed the \"Bad Girl\" music video for artist Cameron Mcbeth. Now working on more projects with Band Of Misfits and their junior team The Breakfast Club, he is currently living in Springfield, MO teaching at Tiffany\'s Performing Arts Studio, and Motion Playlist as the hip hop instructor and competition choreographer. Today Cameron is still pursuing his passion as a dancer and in choreography in hopes of becoming a well known choreographer as well as an actor and film maker.",
                          @"Giovanni Allen is originally from New York City but Currently based In Dallas, TX. He received his early training at the Alvin Ailey American Dance Theater and American Ballet Theater. He did his undergraduate work at the California Institute for the Arts in LA. During his time at school he was invited In 2008, to Choreograph Works on the International company at the Barcelona International Course of Dance in Spain as well as the Greece Dance Festival. He has worked with artists such as; Rodolfo Castellanos, Jean Emile, Juan Borona and Roger Jeffrey. After Spain, he was chosen to represent Cal Arts at the American College Dance festival in 2009. That same year he was cast in the NYC Broadway holiday show \"Radio City Christmas spectacular\". In the summer of 2010, he made Texas home where he has been teaching modern, lyrical, contemporary, hip-hop, jazz, and ballet and choreographing for numerous studios and Hs school drill teams in the metroplex. Giovanni has made a name for himself in the Dallas area choreographing award winning dances. He brings that certain \"Spark\" to every class and piece of work. He draws from a large range of influences, musical, literary, social and even nature. His goal is to simply spread his vision and teachings all over the world. Giovanni has also judged for numerous pro dance teams such as the Dallas Rhythm and Blue dancers and the Texas Revolution Dancers. When he isn't in local studios guest teaching and choreographing he travels to judge at regional dance competitions. He is very pleased and honored to be joining the Soul de Soul Dance Convention later this year. He could not have asked for a better dance family.",
                          @"With over 10 years of professional choreography and performance experience, Kelly Stevens brings a cutting edge style and dynamic energy to the performance stage. A proud graduate of the University of Central Oklahoma, Kelly was a member of Kaleidoscope Dance Company and UCO Pom. Following graduation, Kelly moved to New York to continue her training at Broadway Dance Center, Steps on Broadway and Peridance. Her time spent in New York allowed her the opportunity to perform professionally in New York, Ohio, Oklahoma and Missouri. A product of diverse training with some of the best choreographers in the United States, Kelly has developed a style and method of composition that compliments the abilities of dancers at all stages of growth and development. Having been recognized countless times for her unique and entertaining choreography both regionally and nationally, she maintains that the magic lies in the hands of the artists executing her work. Her spectrum of teaching includes studio dancers across the country, master classes for university dance and musical theatre programs, and staging/choreographing countless regional musical theatre productions.\n\nA passionate competitor, when Kelly is not helping build and develop performers at dance studios, universities and on the professional stage, she is the driving force behind several highly reputable and award winning high school and collegiate level dance teams in the nation. Her teams consistently place in the top 5 nationally and are recognized for their choreography and outstanding technical execution. She is the choreographer for the 8 time Missouri State Champion Dance Team: The Saint Francis Borgia Starry Knights and Maryville University. Kelly is also the head coach and choreographer for the Seckman Varsity JagSwag Dance Team. This year, her work at Seckman High School earned the team 2nd place in Medium Varsity Jazz. Kelly is also the main stage production choreographer for Six Flags, St. Louis and is a staff choreographer for On Your Toes Dance Studio.",
                          nil];
    self.teacherImagesBlurred = [[NSArray alloc]
                               initWithObjects:
                               @"luam-blurred",
                               @"jenn-blurred",
                               @"teddy-blurred",
                               @"justine-blurred",
                               @"audrey-blurred",
                               @"mackenzie-blurred",
                               @"hilary-blurred",
                               @"alex-blurred",
                               @"victoria-blurred",
                               @"sarah-blurred",
                               @"amelia-blurred",
                               @"cj-blurred",
                               @"lynse-blurred",
                               @"cameron-blurred",
                               @"giovanni-blurred",
                               @"kelly-blurred",
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
        
        detailViewController.teacherDetailModel = @[self.teacherNames[row], self.teacherImagesLarge[row], self.teacherBio[row], self.teacherImagesBlurred[row]];
    }
}

@end
