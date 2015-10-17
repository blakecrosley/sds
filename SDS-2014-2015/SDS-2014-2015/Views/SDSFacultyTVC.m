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
    
    self.teacherNames = [[NSArray alloc]
                     initWithObjects:
                            @"Amelia Lowe (guest)",
                            @"Audrey Case",
                            @"Cameron\"Misfit\" Graham",
                            @"Cat Cogliandro",
                            @"CJ Edwards",
                            @"Destini Rogers",
                            @"Giovanni Allan",
                            @"Hilary McAlister",
                            @"Jason Gorman",
                            @"Justine Menter",
                            @"Kali Mathews (guest)",
                            @"Kate Jablonski (guest)",
                            @"Liz Terry (guest)",
                            @"Lynse Iwersen",
                            @"MacKenzie Crosley",
                            @"Patricia Oplotnik (guest)",
                            @"Sarah Katarina (guest)",
                            @"Teddy Tedholm",
                            @"Victoria Brown",
                         nil];
    
    self.teacherImages = [[NSArray alloc]
                      initWithObjects:
                            @"amelia",
                            @"audrey",
                            @"cameron",
                            @"cat",
                            @"cj",
                            @"destini",
                            @"gio",
                            @"hilary",
                            @"jason",
                            @"justine",
                            @"kali",
                            @"kate",
                            @"liz",
                            @"lynse",
                            @"mackenzie",
                            @"patricia",
                            @"skooj",
                            @"teddy",
                            @"victoria",
                          nil];
    self.teacherImagesLarge = [[NSArray alloc]
                          initWithObjects:
                            @"amelia",
                            @"audrey",
                            @"cameron",
                            @"cat",
                            @"cj",
                            @"destini",
                            @"gio",
                            @"hilary",
                            @"jason",
                            @"justine",
                            @"kali",
                            @"kate",
                            @"liz",
                            @"lynse",
                            @"mackenzie",
                            @"patricia",
                            @"skooj",
                            @"teddy",
                            @"victoria",
                          nil];
    self.teacherBio = [[NSArray alloc]
                          initWithObjects:
                            @"Amelia Lowe is most famously known for her time on So You Think You Can Dance Season 9 as a member of their top 20. In addition to this she made it into the top 12, allowing her the opportunity to perform across the country with the So You Think You Can Dance tour. Since her time on the show, Amelia has appeared as a principal dancer in episodes of Boardwalk Empire. She\'s also been featured in multiple commercials including a nationwide commercial for Wendy\'s, Target, the New York Stock Exchange, and American Express. Amelia got the chance to be a featured dancer at the premiere for The Great Gatsby. She also performed for emerging choreographer, Lindsay Nelko at the Capezio Ace Awards. She is currently living in New York and dancing for fellow So You Think You Can Dance alum, Ellenore Scott in Ellenore\'s up and coming company, ELSCO.",
                            @"Audrey Case is from Edmond, Ok. She started dancing at age 3 and trained in all styles at Kim Massay Dance Productions. In 2012, she auditioned for Fox\'s So You Think You Can Dance and became one of Season 9\'s top ten finalists. Following the shows finale, the top ten traveled the country, performing for 30 cities across the US. She now lives in North Hollywood, CA and is continuing her dance career doing several company style shows, including dancing for Andrew Winghart, Royal Flux, Conteur Dance Company, Revolution Dance Company, as well as pursuing commercial work, teaching with Adrenaline Remix, Soul De Soul Dance Convention, The One Dance Intensive, Extreme Talent Showcase, Epic Dance Showcase, and Skate Dance Dream.",
                            @"Born in Los Angeles, CA, Cameron was always an entertainer at heart. Growing up in the Compton, CA area of Los Angeles, he was fascinated with the dance moves of Michael Jackson as well as Usher, and Omarion and wanted to move just like they did. At the age of 15, after seeing the movie \"You Got Served\" he took notice of world known choreographer Dave Scott and decided to get into hip hop dance more. He later moved to Missouri after the loss of his cousin whom he was close with. He began taking dance more seriously and joined a dance crew that formed at his high school. After winning talent shows, and dance contest and performing for local hip hop artist, Cameron decided to take his dance passion to the next level. At the age of 21 he moved to Oklahoma City, OK to learn contemporary and hip hop from Emily Shock and Destini Rogers. A year later he began teaching dance classes, and soon formed the dance crew/company known as Band Of Misfits. Soon after, Cameron traveled the states learning and teaching. As well as going overseas to China to dance and teach. He and the Band Of Misfits have accomplished quite a bit within the 3 years of when they started. Cameron has been able to showcase some of his talents in events such as Kollaboration Tulsa which was the very first for Oklahoma, World Of Dance Dallas and also for Chris Brown and the F.A.M.E tour, and co-choreographed the \"Bad Girl\" music video for artist Cameron Mcbeth. Now working on more projects with Band Of Misfits and their junior team The Breakfast Club, he is currently living in Springfield, MO teaching at Tiffany\'s Performing Arts Studio, and Motion Playlist as the hip hop instructor and competition choreographer. Today Cameron is still pursuing his passion as a dancer and in choreography in hopes of becoming a well known choreographer as well as an actor and film maker.",
                            @"Cat Cogliandro, a native of Houston, Texas, received her BFA in Dance from SUNY Purchase. Since then, she has worked with choreographers such as Al Blackstone, Cherice Barton, Tyce Diorio, Mike Esperanza, Jason Gorman, Juliette Irons, Erica Sobol, Sonya Tayeh, Teddy Tedholm, Jaci Royal and Andrew Winghart. Her credits include So You Think You Can Dance, America\'s Got Talent, The 2014 Gypsy Awards, and The Pulse on Tour. She was one of the featured \"From Stage to Studio\" teachers in the December (2014) issue of Dance Teacher Magazine and was also named one of Dance Spirit Magazine\'s \"13 of the Dance World\'s Hottest Young Choreographers\" in November (2014).\r\rCat is currently on faculty at Broadway Dance Center and The Edge, and guest teaches at studios such as Millennium Dance Complex (LA and Pittsburgh), Peridance and Movement Lifestyle. She also taught for The Pulse on Tour Annual Teacher Workshop, Wild Dance Intensive and Turn It Up Dance Challenge.\r\rCat\'s work has been presented at The Young Choreographers Festival, Young! Tanzsommer, Sirens After Dark, Jared Grimes\'s Feel Good, Dancin\' Downtown at The Joyce, Riverside Church, Raw Artists (NYC), Club Jete, Dixon Place, The Pulse Showcase Finale in New York City, Carnival LA and is a finalist for the 2015 A.C.E. Awards.",
                            @"Mr. CJ Edwards (MRCJE) is a professional dancer/choreographer, instructor and student of dance. CJ started dancing in high school where he grew up, in a small city of Victorville, Ca. In college he danced in the local dance community with teams such as Team Millennia and BoogieZone Breed. Professionally CJ has danced and worked with Omarion, Andre Mieux and was featured on Season 5 of MTV\'s America\'s Best Dance Crew with the crew, \"Heavy Impact.\" CJ has choreographed for many local dance teams, studios as well as professional companies like: Dance Mob Nation, IBM, ABC News, EXTRA, Yahoo News and the Latin Grammy\'s Promotional Tour- Verizon Fios TV. He has also danced internationally in Wenzhou, China on a dance tour and Chiangmai Thailand for missions spreading the gospel of Jesus Christ. Currently CJ teaches a“Hip Hop Soul” class weekly at the Word in Motion Dance Studio in North Hollywood. He also serves with Word in Motion Dance Ministry from The Underground Church and directs a professional men’s dance company called The ReCipE Men. However, from the community, small stage and national television CJ\'s goal is to use his gifts to glorify God and inspire/help change the world!",
                            @"Destini, from OKC has been studying dance since age 3 and attended Classen School of Advanced Studies & Performing Arts. She is a natural born inspirer who has always wanted to make a positive change in the dance world and with her fellow artists. She began choreographing at age 15 and within a year, won her first Alvin Ailey award. She attended the University of Central Oklahoma on a dance scholarship where she was crowned Miss Black UCO. During this time she started choreographing for competition studios in Oklahoma. In 2005 Destini was a top 8 finalist on the first season of So You Think You Can Dance. This experience gained her fans from all over the world, but more importantly it helped show her what it takes to be a star in this industry.\r\rShe went on to dance for Rihanna, Kanye West and Beyoncé. She also danced on a world tour with Asian sensation Rain (Bi). By 2007 she founded Dare To Be Soul, a contemporary dance company. She has been teaching dance and choreographing all across the US for 8 years now. In meeting so many aspiring artists she wanted to be able to train their mind and spirit along with their bodies. She begin developing her love for music, spirituality, and psychology. In 2014 she released her first EP along with an animation written and directed by herself. In 2014, she became certified in cognitiveOS hypnotherapy and has been transforming the lives of artists even more ever since. Currently she collaborates with artist on every creative level from photo shoots to producing music videos, Destini strives to bring her vision to the entertainment industry. Through all of these experiences she has learned how she can make the positive change in this industry that she has always wanted to; and that is to create H(YOU)MAN, a new boutique dance studio to open fall of 2015 in Los Angeles, CA.",
                            @"Giovanni Allen is originally from New York City where he received his early training at the Alvin Ailey American Dance Theater and American Ballet Theater. He did his undergraduate work at California Institute for the Arts in LA. In 2008, he was invited to choreograph at the Barcelona International Course of Dance in Spain as well as the Greece Dance Festival. He has worked with artists such as; Rodolfo Castellanos, Jean Emile, Juan Borona and Roger Jeffrey. After Spain, he was chosen to represent Cal Arts at the American College Dance festival in 2009. That same year he was cast in the NYC Broadway Holiday Show \"Radio City Christmas Spectacular\". In the summer of 2010, he made Texas home where he has been teaching modern, lyrical, contemporary, hip-hop, jazz, and ballet and choreographing for numerous studios in the metroplex. Giovanni has made a name for himself in the Dallas area. He brings that certain \"spark\" to every class and piece of work. He draws from a large range of influences, musical, literary, social and even nature. His goal is to simply spread his vision and teachings all over the world. Giovanni has also judged for numerous pro dance teams and dance competitions.  He is very pleased and honored to be joining the Soul de Soul Dance Convention later this year. He could not of asked for a better dance family.",
                            @"Hilary Rose McAlister was born and raised in Oklahoma City where she fell in love with dance and knew from an early age she was created to move. She began teaching and choreographing at the young age of 14 under the guidance of Cece Farha who was able to pinpoint Hilary\'s gifting early on. She attended the University of Central Oklahoma as a dance major on scholarship and continued her training at a summer intensive at Broadway Dance Center and Steps on Broadway.\r\rHilary is the COO and Co-founder of Soul de Soul Dance Convention where she also teaches on faculty. She currently resides in Edmond, Oklahoma and teaches full time at Studio J School of Dance. She has been teaching, choreographing, and performing for over 15 years. Hilary\'s ability to create a safe and honest learning environment along with her abiity to tell a clear story through movement has her master classes and choreography highly sought after throughout the Midwest, NYC, LA and Boston. Hilary\'s unique choreography has been recognized countless times both regionally and nationally. You can sse some of Hilary\'s work featured on the Hall of Fame Dance Challenge website.\r\rHilary has been featured in Pure Magazine and Mommy\'s New Stage about her influence in the dance community. As well as back up dancing for Churchboy, a featured dancer in numerous musical theater productions in the Oklahoma area, and assisting for OKLA Dance Convention. Tearstained Dance Company which Hilary created and directed was the featured guest performer for Pure Magazine\'s Launch Party.\r\rHilary knows that dance is the rhythm every person is born with; therefore, people dance alone, dance with, and or dance for something. The experience, feel, and emotion of dance, is what drives Hilary to express her heart through dance. With this understanding, Hilary hopes to touch, inspire, move, and encourage not only the dancers but the audience as well. She believes dance is the language of the soul, which can move us to feel and experience something greater than ourselves and she feels blessed to be able to contribute to our world with something as beautiful as dance.",
                            @"Jason Gorman started dancing at the age of 11 with the Celtic Gold Academy of Irish Dance in Westminister, CA. He competed until age 15 winning numerous regional and national titles. While attending Wilson High School in Long Beach, CA, Jason\'s passion for movement expanded to ballet and jazz in a program that allowed him to grow technically as a dancer as well as a choreographer. At age 16 he left to join the cast of \'Michael Flatley\'s Lord of the Dance\' in Las Vegas where he performed the title role for 4 years before joining a touring cast of \'Lord\' where he performed for another 6 years traveling to many countries including Ireland, England, Scotland, Denmark, Sweden, Germany, Greece, Italy, Israel, China, Chile and Taiwan as well as the United States and Canada. During his downtime from touring, he also performed and trained with Nate Hodges contemporary/jazz company RhetOracle. Jason furthered his passion for choreography and performance by founding a dance company in 2012 with his close friend Nicole Hogg called Marrow Dance. He has had the honor of working with the incredible Erica Sobol over the past two years performing with her company collidEdance as well as recently with Ryan Heffington on the new Florence + the Machine music video for \'What Kind of Man\'. Jason has traveled and taught on convention with Intrigue Dance Intensive and Top10 Dance Challenge. In addition, he is on faculty at Edge Performing Arts Center and Movement Lifestyle in Los Angeles.",
                            @"Justine Menter, originally from Dallas, TX, is a choreographer known for teaching Kim Kardashian on Keeping Up the Kardashians and working with LMFAO. She is currently based in Los Angeles and has choreographed numerous productions within the entertainment, music & fashion industries. Some of her professional credits include America’s Got Talent, Faith Hill, Manny Pacquaio, Sephora, Sony, The View, award-winning web series Destroy the Alpha Gammas, LA Fashion Week, Choreographer’s Carnival and most recently, a promo ad for Soxxy that will air on American Airlines beginning May 2015. Justine was also the Owner & Creative Director of Flirt Dancers, a dance-entertainment company based in LA for the past 5 years. She produced, directed and co-choreographed their bi-annual full-length shows and red carpet events.\r\rJustine is on faculty at International Dance Academy (IDA) Hollywood, as well as the American Musical & Dramatic Academy (AMDA) in LA, traveling dance conventions Turn it Up and SouldeSoul, as well as various a guest teacher for several summer intensives in Los Angeles like Be Discovered and Hollywood Summer Tour. Justine has also had the privilege of teaching internationally in Cape Town-South Africa, Singapore, Norway and Mexico. Passionate about inspiring the youth of today, she continues to teach, judge & set choreography all over the world.\r\rHer entrepreneurial spirit, unique musicality, and fresh, sassy approach to dance have earned Justine her notoriety. She currently resides in Los Angeles with representation by Movement Talent Agency (choreography/dance education), Bobby Ball Agency (commercial/print). She is currently teaching, traveling and spending time with her husband, family, friends, and dog, Barley. Check out Justine\'s website justinementer.com.",
                            @"Kali was born in Oklahoma City, Oklahoma where she began dancing at the age of three. She grew up loving tap and training in ballet with the cecchetti method, which taught her balance, poise, strength, elevation, and elasticity at a young age. Kali discovered her passion for movement and creation at Applause Studios in 2007. She had the privilege of working with choreographers Emily Shock and Destini Rogers, along with other inspiring instructors who helped mold Kali into the dancer that she is today. At the age of 19, Kali moved to Los Angeles, California to further her dance career and train with other great artists. After 6 short months in LA, Kali returned home and currently teaches at Applause Studios and Epic Dance Studio, along with other studios in Oklahoma and around the U.S. In April 2013, Kali performed alongside dancers Emma Portner, Matt Luck, Juliette Irons, and Lil Drescher, with musician Richard Walters in Regretless - a full length, sold out show in collaboration of Richard Walters live music and choreography by Matt Luck and Emily Shock. Kali plans to continue to pursue her dancing career in every way possible and looks forward to what the future has in store for her.",
                            @"Kate Jablonski is the owner and artistic director of Beyond Words Dance Company, The Kate Jablonski Statement and Camp Kate. With a Bachelor\'s degree in Business from University of Illinois at Chicago, she is a co-founder of Foundations Performance Center along with Amber Alonzo of Expression Dance Studio. This 6,200 square foot facility has become a permanent home serving as a rehearsal space as well as a 300 seat theater venue.\r\rKate began her professional career training in New York City as a member of Broadway Dance Center\'s Professional Program. Under the direction of Wes Veldink, this scholarship allowed Kate to work alongside some of the greatest teachers and choreographers on the East Coast.\r\rIn 2007, Kate began using YouTube as a platform to share her choreography. What started out as a dancer keepsake, quickly reached 1 million views, and continued to grow. Now, Kate (or katieshmatee) has attracted over 53 thousand subscribers and over 20 million views from around the world.\r\rWhile becoming a worldwide phenomenon, Kate had been given the opportunity to teach and choreograph internationally for dance companies in Canada, England, France, Germany, Holland, Switzerland, and Italy (Erice Danza). Kate\'s animated teaching style has allowed her to break language barriers while traveling abroad.\r\rIn 2009, Kate received the prestigious Gold Leo\'s Award through Jazz Dance World Congress. Also in 2009, she was chosen as a finalist in the Capezio A.C.E. Awards for Choreographic Excellence. As first runner-up at the event, she debuted her professional dance show, \"Beyond Words,\" at New World Stages in Manhattan in July of 2010.\r\rKate founded Beyond Words Dance Company in the fall of 2009. The program, training dancers ages 10-18, has fostered a positive learning environment while instilling values of commitment, responsibility, and work ethic. This youth company has received accolades from prestigious teachers and choreographers in the industry.\r\rIn 2011, EMI Records produced Brit Award winner, Laura Marling\'s music video \"I Was Just A Card\". Alongside Brian Lipchik, Kate co-directed and choreographed the video featuring members of Beyond Words.\r\rAlso in 2011, Kate was featured in Dance Spirit Magazine in Zachary Whittenburg\'s article, \"Piece by Piece: Tips for First-Time Choreographers\". In 2013, Kate was highlighted in Dance Teacher Magazine article, \"A New Generation – Nine Studio Owners Under 40\" as the youngest entrepreneur on the list.\r\rCamp Kate was founded in the summer of 2010. The annual three-day intensive brings hundreds of students from all over the world to Chicago to experience Kate\'s unique teaching style. In the summer of 2013, the intensive expanded to its first international city in Liverpool for Camp Kate UK!\r\rIn 2012, The Kate Jablonski Statement, a professional company, was founded. The company has allowed continuing dancers ages 18 and up to train with Kate and experience a professional atmosphere while performing at prestigious Chicago events and in Kate\'s original full-length productions.\r\rPerformances by Beyond Words and The Statement earned Kate the title of Dance Chicago\'s Choreographer of the Year in 2013. Dance Chicago then sponsored Kate\'s production of \"Tabula Rasa\" at the Athenaeum Theatre in Chicago in May of 2014. Due to the overwhelming response, two encore performances debuted soon after at Foundations Performance Center.",
                            @"Liz Collinsworth Terry is a graduate of Southern Methodist University, where she earned a Bachelor of Arts in Journalism with a minor in psychology. She began her dance training at the age of three and has extensive training in lyrical, contemporary, jazz, ballet, technique, hip hop and tap. Liz grew up in the competitive dance world and has been an award-winning soloist and scholarship recipient from various conventions and competitions. As a young dancer, Liz performed with the Dallas Summer Musicals, trained with the Tulsa Ballet, performed at Dallas Cowboy halftime shows and was showcased in various benefit and industrial performances. Liz also pursued other areas of the performing arts by training with Septien Vocal Group and Kim Dawson Studios.\r\rFollowing high school, Liz relocated to New York to further her training and dance career while attending Marymount Manhattan College. While in New York, Liz trained under some of the top names in the industry at Broadway Dance Center and Steps on Broadway. Her experience in New York motivated her to bring her newfound knowledge and inspiration back to her hometown while leading her to discover her true passions in dance were teaching and choreography. Since returning home, Liz has worked with many local studios and is currently on staff at Dance Industry Performing Arts Center in Plano, TX. She has toured as a choreographer with Elevation on Tour, Crowd Pleasers Dance and has choreographed for countless drill teams and dance teams. In 2013, Liz founded Dallas’s professional contemporary company, Pedestrian Dance Movement. She is the Artistic Director and Choreographer of Pedestrian, in which her work has been displayed as a guest artist for Soul De Soul dance convention, Dancers Give Back Dallas, Kids4Kids Benefit and The Dallas Art & Fashion Show. Since establishing Pedestrian, Liz and her company have offered and held workshops and master classes for young dancers. Whether training a recreational dancer or pre-professional, Liz feels blessed to have the opportunity to instill her love and passion for the art of dance in the hearts of her students.",
                            @"Lynse has been dancing and performing since the age of 2. She has been a teacher and choreographer in her family operated studio, DMC Dance, for the past 11 years. Lynse has taken from some of the world\'s most renowned choreographers in the world, like Mia Michaels and Wade Robson, Hui Cha Poos and Robin Conners. She has been in shows such as the Nutcracker, 24 consecutive recitals, and countless charity events.\r\rAt DMC, Lynse is the competition coordinator, where she has won multiple choreography awards, as well as awards for costume design, creativity, and overall awards. Lynse is a proud wife of Steven Iwersen and they have a rockstar son, three year old named Kiesen.",
                            @"Mackenzie, an Oklahoma native, is a working dancer, teacher and choreographer in Los Angeles. Her professional credits include music videos, back up dancing and performances with Missy Elliot, Polica, Sharaya, Sephora, Ceasar\'s Palace, LA\'s Choreographers Carnival, recording artists Hybrid Digital, Dez Cleo and Dario Benitez and rap artist Oh Blimey. She was a featured dancer and character for the hit web-series FLiRTv and recently as a dancer on the upcoming web series, Destroy the Alpha Gammas. Mackenzie is member of LA\'s elite professional jazz company, FLiRT Dancers and can be seen in the company\'s tri-annual full length company shows and in various performances around Los Angeles.  She has performed all over the LA and Las Vegas areas, including hot spots like Club Nokia, the Roosevelt Hotel, San Diego Pride, Dim Mak Studios, Spot 5750, Rolling Stone Lounge, Falcon\'s Lounge and Avalon. \r\rMackenzie is on faculty at International Dance Academy (IDA) Hollywood. She also teaches jazz and contemporary for the IDA Certificate Program. She is the CEO & Co-Founder of Soul de Soul Dance Convention, where she also travels and teaches on Faculty. She has also had the privilege of teaching master classes in Los Angeles, New York City, Boston and through-out the Mid-West. She also teaches locally in California at Impulse Dance Company where she choreographs for the company.\r\rHer choreography is well known for it\'s innovative, distinctive and artistically grounded pictures her works create. She has received numerous Choreography Awards and recognition from dance competition and conventions. Her work has been featured on MyIndieLife.tv, FLiRT dancers and the Dancescape Stage. She recently set choreography for the Oklahoma City Ballet Summer Intensive and directed and co - produced a concept video for Green Light Dance Project in Dallas. Her distinctive movement style, technique and ear for music continue to bring her success in her endeavors as a dancer, teacher and choreographer.\r\rShe is currently based in Los Angeles and represented by The Movement Agency for dance / choreography / dance education.",
                            @"Patricia Oplotnik is a former Artist in Residence at the prestigious Ann Lacy School of Dance and Arts Management at Oklahoma City University and has more than forty-eight years of teaching experience to her credit. She founded Applause Studios in Oklahoma City and was the Director for 30 years leaving private teaching to work full time at OCU. In 2013 she was honored by being awarded the OCU Outstanding Full Time Faculty Award. A forty-four year member of Dance Masters of America, Patricia is a Nationally Certified Examiner for tap, ballet, jazz, modern and acrobatics. She serves DMA as an Area Vice-President and has also served as a National Director; she is also presently the President for Central Tri-State Chapter 27. Patricia has also been an Internationally Licensed Tap Adjudicator having trained World Champions. She has produced shows in Las Vegas and Branson, choreography for the American Spirit Dance Company which has been chosen for International tours, and provided dancers for local television productions. In 1995 American Kids awarded her the distinction of being named \"Teacher of the Decade\". In addition, she has been honored by \"Who\'s Who in America\", Madison\'s \"Who\'s Who Among Professionals\" and Covington\'s \"Who\'s Who in America\". Patricia adjudicates and teaches for many professional dance organizations and has received many choreography and high place awards throughout her teaching career. Two of her children, Brent Jason Oplotnik and Angie Sellers are successful choreographers/teachers/ and master teachers as well. Patricia looks forward to helping teachers with the design of their dance programs, especially for the art of tap, having created new teaching techniques to help speed the development of strong, capable , and multi-styled tap dancers.",
                            @"Sarah-Katarina \"SKooJ CorE-O\" brings her knowledge and talents to the Performing Arts with experience in performance, choreography, instruction, and adjudication.\r\rSKooJ is the Lead Artistic Director of the Boston-based Static\r\rNoyze Dance Company (World Of Dance:NYC/NJ Champions and Carnival NYC), whom are a Theatrical Hip Hop Company that have guest performed for Governor Devaul Patrick, Harvard Business School\'s New Venture Competition, and for colleges throughout the country. SKooJ\'s organic approach toward movement created the Boston Community Dance Project (BCDP), a professional collective expressing their passion of story telling through contemporary and fusion movements. BCDP\'s work can be seen at the Massachusetts Dance Festival, NYC Dance Week, Boston Contemporary Dance Festival and our annual BCDP show every August! Her choreography and direction has also been featured on the HGTV series \"Spontaneous Construction\", NESN, The Dr. Oz Show! and on the 2015 WayFair.com Holiday and Spring Commercials! Her talents have also paired up with TedX Boston/Philadelphia, New Balance, Broadway in Boston, Hot 96.9 Boston, Fat Joe, Salt n Pepa, AV Media, IDEXX, and LA\'s own Club Jete and Carnival\'s Anniversary Show!\r\rSKooJ CorE-O entered the Music Video scene with choreographing for International Pop Artist Tamara Rodriguez, Pop/R&B Artist Erene, and Lucia Marie's House of Blues Tour! Other credits include \"Digital Love\" by Makio, \"Dance With You\" by Bad Rabbits ft. Clinton Sparks, \"Stay With Me\" Cover by Keith London and her own dance concept videos with McCarthy Visuals, Moonculture Films, and Kuto Films.\r\rLastly, SKooJ partnered up with Salty Bovine Films with setting artistry for their past three short films ADONIS, MOSDEN, and TRENT while most recently showcased her acting talent in the 2014 movies Basic Math starring Cameron Diaz and Jason Segel, TED2 with Mark Wahlberg, and Until We Bleed featuring Aaron Eckhart!",
                            @"Teddy Tedholm is rapidly gaining recognition as one of the most exciting new talents in dance.\r\rThe unique style of movement and obvious love of dance that mark his performances have also made Teddy a widely sought-after choreographer and teacher. He has worked at some of the finest dance studios in North America and around the world, including the Millennium Dance Complex and EDGE Performing Arts Center in Los Angeles and at New York City\'s famed Broadway Dance Center. In Los Angeles, he performs with Erica Sobol\'s CollidEdance company.\r\rIn 2013, Teddy graduated with honors from the University of the Arts, under the direction of Donna Faye Burchfield. While in Philadelphia he produced much of his own work, includingeleven:eleven, a full-length show that received great reviews. His outstanding work at UArts earned him the university’s Stella Moore Prize for four years of achievement in dance.\r\rAfter college, Teddy was nominated for a World Dance Award in the category of Best Choreography Concert/Live Performance, and was also a finalist in the McCallum Theater Choreography Festival.  Both of these citations were for his eleven:eleven solo, \"My Feet.\"\r\rMost recently, he was named a finalist in the 2014 Capezio A.C.E. Awards.\r\rTeddy currently resides in New York City, where he continues to develop and present new work.",
                            @"Victoria Brown has over 15 years of training in contemporary, jazz, hip-hop, and ballet. Victoria holds a BA in dance with a minor in business from San Jose State University. She also graduated from the Broadway Dance Center fall 2006 internship program and the historic Jacobs Pillow Summer Dance Intensive 2005. Victoria has taught and choreographed for various dance studios and companies around the united states including Boogie Zone and Soul de Soul Dance Convention. Professional choreography includes: Forever 21 back to school campaign, Phil Beaudreau’s \"Won’t Get Away\" video, Bad Girls Club season 8, Icylytes \"Dark\" music video, Deejay Jounce \"Get Your Feet Up\" music video, \"Oh La La\" music video Sherryce, Hell and Lula \"Quidam\" music video, DAMSF Showcase, Posers, Max’ed Out, Choreographers Ball Toronto, Canada, 15 Minutes of Fame movie premier, Moving Through Keys TV pilot and NBAD Anaheim Arsenal A-List dance team. She has also performed in numerous shows such as: Las Vegas annual international concert, Stop Revolt music video, Bow Wow as feat. In Omarion \"Girlfriend\" music video, Nelly feat. Fergie in \"Party People\" music video, NBAD Anaheim Arsenal A-List dance team, and America’s Got Talent finalist All Wheel Extreme Sports entertainment.\r\rShe is currently co-artist director of Mashup Contemporary Dance Company, dance teacher and artistic director of the Academy of Music & Dance in Pasadena, CA, and a dance coach for Mira Costa High School.",
                          nil];
    self.teacherImagesBlurred = [[NSArray alloc]
                               initWithObjects:
                            @"amelia-blurred",
                            @"audrey-blurred",
                            @"cameron-blurred",
                            @"cat-blurred",
                            @"cj-blurred",
                            @"destini-blurred",
                            @"gio-blurred",
                            @"hilary-blurred",
                            @"jason-blurred",
                            @"justine-blurred",
                            @"kali-blurred",
                            @"kate-blurred",
                            @"liz-blurred",
                            @"lynse-blurred",
                            @"mackenzie-blurred",
                            @"patricia-blurred",
                            @"skooj-blurred",
                            @"teddy-blurred",
                            @"victoria-blurred",
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
    bgColorView.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
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
