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
    [self _prepareMeterViews];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * PAGE_COUNT);
    [self.view addSubview:scrollView];
    
    for (AXZMeterView *meterView in self.meterViews) {
        [scrollView addSubview:meterView];
    }
}

- (NSMutableArray *)backgroundImages
{
    NSMutableArray *backgroundImages = [[NSMutableArray alloc] init];
    
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    [backgroundImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    [backgroundImages addObject:[UIImage imageNamed:@"red_background_4"]];
    
    return backgroundImages;
}

- (void)_prepareMeterViews
{
    self.meterViews = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < PAGE_COUNT; i++) {
        UINib *nib = [UINib nibWithNibName:@"AXZMeterView" bundle:nil];
        AXZMeterView *meterView = [nib instantiateWithOwner:self options:nil][0];
        meterView.backgroundImageView.image = self.backgroundImages[i];
        meterView.frame = CGRectMake(0, self.view.frame.size.height * i, self.view.frame.size.width, self.view.frame.size.height);
        [self.meterViews addObject:meterView];
    }
    
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
