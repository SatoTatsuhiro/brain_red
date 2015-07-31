#import <UIKit/UIKit.h>

@protocol AXZMeterViewDelegate <NSObject>

- (void)resetButtonDidTapped:(id)sender;
- (void)infoButtonDidTapped:(id)sender;
- (void)homeButtonDidtapped:(id)sender;
- (void)userButtonDidtapped:(id)sender;

@end

@interface AXZMeterView : UIView

@property (weak) id<AXZMeterViewDelegate> delegate;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UIImageView *innerCircleImageView;
@property (strong, nonatomic) IBOutlet UIButton *kmButton;
@property (strong, nonatomic) IBOutlet UILabel *bankLabel;
@property (strong, nonatomic) IBOutlet UILabel *slopeLabel;

@end
