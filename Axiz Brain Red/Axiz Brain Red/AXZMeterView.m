#import "AXZMeterView.h"

@implementation AXZMeterView

- (IBAction)resetButtonAction:(id)sender
{
    if ([self respondsToSelector:@selector(resetButtonDidTapped:)]) {
        [self.delegate resetButtonDidTapped:self];
    }
}

- (IBAction)userButtonAction:(id)sender
{
    if ([self respondsToSelector:@selector(userButtonDidtapped:)]) {
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

@end
