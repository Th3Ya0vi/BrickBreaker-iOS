//
//  SettingsController.h
//  BrickBreaker

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface SettingsController : UIViewController

@property (nonatomic, retain) IBOutlet UISlider *volumeControl;
@property (nonatomic, retain) IBOutlet UISlider *musicControl;

-(IBAction) adjustVolume;
-(IBAction) adjustMusic;

@end
