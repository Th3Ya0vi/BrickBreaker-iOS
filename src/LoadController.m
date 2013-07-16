//
//  LoadController.m
//  BrickBreaker

#import "LoadController.h"

@implementation LoadController

@synthesize level1Button, level2Button, level3Button, level4Button, level5Button;

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

- (void)saveLevel:(int)level {
    [[NSUserDefaults standardUserDefaults] setInteger:level forKey:@"keyLevel"];
}

- (IBAction)didClickLevel1Button:(id)sender {
    [self saveLevel:1];
}

- (IBAction)didClickLevel2Button:(id)sender {
    [self saveLevel:2];
}

- (IBAction)didClickLevel3Button:(id)sender {
    [self saveLevel:3];
}

- (IBAction)didClickLevel4Button:(id)sender {
    [self saveLevel:4];
}

- (IBAction)didClickLevel5Button:(id)sender {
    [self saveLevel:5];
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
