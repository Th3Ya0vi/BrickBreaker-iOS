//
//  GameController.h
//  BrickBreaker

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface GameController : UIViewController {
    UILabel *scoreLabel;
    int score;
    
    int screenWidth, screenHeight;
    
    UIImageView *ball;
    
    CGPoint ballMovement;
    CGFloat ballVelocity;
    CGFloat ballVelocityYNew;
    CGFloat ballVelocityX;
    BOOL wallHit;
    int brickNumberHit;
    
    UIImageView *paddle;
    CGFloat halfWidth, halfHeight, ballRadius;
    float touchOffset;
    
    int lives;
    UILabel *livesLabel;
    
    int selectedLevel;
    float volume;
    float musicVolume;
    
    UIButton *menuButton;
    
    NSMutableArray * brickArray;
    NSTimer *timer;
    
    AVAudioPlayer *player1;
    AVAudioPlayer *player2;
    AVAudioPlayer *musicPlayer;
    
    UIImageView *powerUp;
    BOOL powerUpFlag;
    int powerUpType;
    int powerUpTimer;
    BOOL reverse;
}

@property (nonatomic, retain) IBOutlet UILabel *scoreLabel;
@property (nonatomic, retain) IBOutlet UIImageView *ball;
@property (nonatomic, retain) IBOutlet UIImageView *paddle;
@property (nonatomic, retain) IBOutlet UILabel *livesLabel;
@property (nonatomic, retain) IBOutlet UIButton *menuButton;
@property (nonatomic, retain) IBOutlet UILabel *levelLabel;
@property (nonatomic, retain) IBOutlet UIImageView *powerUp;

- (void)initializeTimer;
- (void)animateBall:(NSTimer *) theTimer;
- (void)resetBall;
- (void)goToMenu;
- (void)loadBricks;
- (void)loadAudio;
- (void)initializeValues;
- (void)pauseGame;
- (IBAction)didClickMenuButton:(id)sender;
- (void) resetPowerUp;
- (void)saveGame;
- (void)loadGame;
- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;
- (void)pauseAlertView;
- (void)switchLevelAlertView;
- (void)gameOverAlertView;
- (void)finishGameAlertView;
- (void)stopSounds;
- (void)loadBackground;

@end
