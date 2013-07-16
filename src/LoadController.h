//
//  LoadController.h
//  BrickBreaker


#import <UIKit/UIKit.h>

@interface LoadController : UIViewController

@property (nonatomic, retain) IBOutlet UIButton *level1Button, *level2Button, *level3Button, *level4Button, *level5Button;

-(IBAction)didClickLevel1Button:(id)sender;
-(IBAction)didClickLevel2Button:(id)sender;
-(IBAction)didClickLevel3Button:(id)sender;
-(IBAction)didClickLevel4Button:(id)sender;
-(IBAction)didClickLevel5Button:(id)sender;

@end
