#import "AXZCbrMeterView.h"

@interface AXZCbrMeterView ()

@property (strong, nonatomic) IBOutlet UIImageView *speedPinImageView;
@property (strong, nonatomic) IBOutlet UIImageView *engineRotationPinImageView;

@property (strong, nonatomic) IBOutlet UILabel *speedLabel;
@property (strong, nonatomic) IBOutlet UILabel *bankLabel;
@property (strong, nonatomic) IBOutlet UILabel *slopeLabel;

@end

@implementation AXZCbrMeterView

- (void)awakeFromNib
{
    self.speedPinImageView.translatesAutoresizingMaskIntoConstraints = YES;
    self.engineRotationPinImageView.translatesAutoresizingMaskIntoConstraints = YES;
    
    self.speedPinImageView.transform = CGAffineTransformMakeRotation(3.13);
    self.engineRotationPinImageView.transform = CGAffineTransformMakeRotation(3.13);
}

//=============================================================
#pragma UpdateLabels
//=============================================================

- (void)updateSpeedLabelWithSpeed:(float)speed
{
    self.speedLabel.text = [NSString stringWithFormat:@"%.0f",speed * 3.6];
}

- (void)updateBankLabelWithBank:(float)bank
{
    self.bankLabel.text = [NSString stringWithFormat:@"%.0f°",bank];
}

- (void)updateSlopeLabelWithSpeed:(float)slope
{
    self.slopeLabel.text = [NSString stringWithFormat:@"%.0f°",slope];
}

//=============================================================
#pragma UpdateSpeedPin
//=============================================================

- (void)updateSpeedPinWithSpeed:(float)speed
{
    float speedRadian = speed * M_PI / 180;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3];
    self.speedPinImageView.transform = CGAffineTransformMakeRotation(speedRadian - (2 * M_PI /2));
    self.engineRotationPinImageView.transform = CGAffineTransformMakeRotation(speedRadian -(2 * M_PI /2));
    [UIView commitAnimations];
}

- (IBAction)infoButtonAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(infoButtonDidTapped:)]) {
        [self.delegate infoButtonDidTapped:self];
    }
}

- (IBAction)homeButtonAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(homeButtonDidtapped:)]) {
        [self.delegate homeButtonDidtapped:self];
    }
}

- (IBAction)userButtonAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(userButtonDidtapped:)]) {
        [self.delegate userButtonDidtapped:self];
    }

}

- (IBAction)resetButtonAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(resetButtonDidTapped:)]) {
        [self.delegate resetButtonDidTapped:self];
    }
}

@end
