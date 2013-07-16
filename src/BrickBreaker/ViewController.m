//
//  ViewController.m
//  BrickBreaker


#import "ViewController.h"

@implementation ViewController

@synthesize infoButton, loadButton;

- (IBAction)didClickInfoButton:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Created by:" message:@"Jason Ng\n Erik Paluka\n Brittany Kondo\n Tony Chuang\n 12/2011" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alert show];
    [alert release];
}

- (IBAction)didClickLoadButton:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"keyLoadButton"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"menu.png"]];
//    [[NSUserDefaults standardUserDefaults] setFloat:0.5 forKey:@"keyVolume"];
//    [[NSUserDefaults standardUserDefaults] setFloat:0.5 forKey:@"keyMusicVolume"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return NO;
}

@end
