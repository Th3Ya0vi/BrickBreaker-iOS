//
//  ViewController.h
//  BrickBreaker

#import <UIKit/UIKit.h>
#import "GameController.h"

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIButton *infoButton;
@property (nonatomic, retain) IBOutlet UIButton *loadButton;

-(IBAction)didClickInfoButton:(id)sender;
-(IBAction)didClickLoadButton:(id)sender;

@end
