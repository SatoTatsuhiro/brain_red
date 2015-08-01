#import "AXZMeterView.h"
#import "AXZAsset.h"

typedef NS_ENUM(NSInteger, AXZSpeedButtonType) {
    AXZSpeedButtonTypeKm,
    AXZSpeedButtonTypeMph,
};

@interface AXZMeterView ()

@property (nonatomic) AXZAsset *asset;
@property (nonatomic) NSInteger speedButtonType;

@end

@implementation AXZMeterView

- (void)awakeFromNib
{
    self.asset = [[AXZAsset alloc] init];
    self.speedButtonType = AXZSpeedButtonTypeKm;
}

- (void)setImages
{
    self.backgroundImageView.image = self.asset.backgroundImages[self.index];
    self.innerCircleImageView.image = self.asset.innerCircleImages[self.index];
    [self.speedButton setImage:self.asset.kmButtonImages[self.index] forState:UIControlStateNormal];
    [self.speedButton setImage:self.asset.kmButtonHoverImages[self.index] forState:UIControlStateHighlighted];
}

//=============================================================
#pragma Action
//=============================================================

- (IBAction)resetButtonAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(resetButtonDidTapped:)]) {
        [self.delegate resetButtonDidTapped:self];
    }
}

- (IBAction)userButtonAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(userButtonDidtapped:)]) {
        [self.delegate userButtonDidtapped:self];
    }
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
- (IBAction)SpeedButtonAction:(id)sender
{
    if (self.speedButtonType == AXZSpeedButtonTypeKm) {
        [self.speedButton setImage:self.asset.mphButtonImages[self.index] forState:UIControlStateNormal];
        [self.speedButton setImage:self.asset.mphButtonHoverImages[self.index] forState:UIControlStateHighlighted];
        self.speedButtonType = AXZSpeedButtonTypeMph;
    } else {
        [self.speedButton setImage:self.asset.kmButtonImages[self.index] forState:UIControlStateNormal];
        [self.speedButton setImage:self.asset.kmButtonHoverImages[self.index] forState:UIControlStateHighlighted];
        self.speedButtonType = AXZSpeedButtonTypeKm;
    }
}

@end
