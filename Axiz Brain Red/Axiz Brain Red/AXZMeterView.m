#import "AXZMeterView.h"

@implementation AXZMeterView

- (IBAction)resetButtonAction:(id)sender
{
    if ([self respondsToSelector:@selector(resetButtonAction:)]) {
        [self resetButtonAction:self];
    }
}

- (IBAction)userButtonAction:(id)sender
{
    if ([self respondsToSelector:@selector(userButtonAction:)]) {
        [self resetButtonAction:self];
    }
}

- (IBAction)infoButtonAction:(id)sender
{
    if ([self respondsToSelector:@selector(infoButtonAction:)]) {
        [self infoButtonAction:self];
    }
}

- (IBAction)homeButtonAction:(id)sender
{
    if ([self respondsToSelector:@selector(homeButtonAction:)]) {
        [self homeButtonAction:self];
    }
}

@end
