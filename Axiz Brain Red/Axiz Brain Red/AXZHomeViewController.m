#import "AXZHomeViewController.h"
#import "AXZMeterView.h"

#define PAGE_COUNT 5

@interface AXZHomeViewController () <AXZMeterViewDelegate>

@property (nonatomic) NSMutableArray *meterViews;
@property (nonatomic) NSMutableArray *backgroundImages;

@end

@implementation AXZHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self _initialize];
}


- (void)_initialize
{
    [self backgroundImages];
    [self meterViews];
}

- (NSMutableArray *)backgroundImages
{
    NSMutableArray *backgroundImages = [[NSMutableArray alloc] init];
    
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    
    return backgroundImages;
}

- (NSMutableArray *)meterViews
{
    NSMutableArray *meterviews = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < PAGE_COUNT; i++) {
        UINib *nib = [UINib nibWithNibName:@"AXZMeterView" bundle:nil];
        AXZMeterView *meterView = [nib instantiateWithOwner:self options:nil][0];
        meterView.backgroundImageView.image = self.backgroundImages[i];
        [meterviews addObject:meterView];
    }
    
    return meterviews;
}


//=============================================================
#pragma AXZMeterViewDelegate
//=============================================================

- (void)resetButtonDidTapped:(id)sender
{
    
}

- (void)infoButtonDidTapped:(id)sender
{
    
}

- (void)userButtonDidtapped:(id)sender
{
    
}

- (void)homeButtonDidtapped:(id)sender
{
    
}

@end
