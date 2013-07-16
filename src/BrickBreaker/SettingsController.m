//
//  SettingsController.m
//  BrickBreaker

#import "SettingsController.h"

@implementation SettingsController

@synthesize volumeControl, musicControl;

-(IBAction) adjustVolume {
    [[NSUserDefaults standardUserDefaults] setFloat:volumeControl.value forKey:@"keyVolume"];
}

-(IBAction) adjustMusic {
    [[NSUserDefaults standardUserDefaults] setFloat:musicControl.value forKey:@"keyMusicVolume"];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"helpBack.png"]];
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"keySettingsVisited"];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return NO;
}

@end
