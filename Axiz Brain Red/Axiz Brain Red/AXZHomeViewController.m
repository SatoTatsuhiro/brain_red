#import "AXZHomeViewController.h"
#import "AXZMeterView.h"
#import "AXZAsset.h"

#define PAGE_COUNT 5

@interface AXZHomeViewController () <AXZMeterViewDelegate>

@property (nonatomic) AXZAsset *asset;
@property (nonatomic) NSMutableArray *meterViews;

@end

@implementation AXZHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self _initialize];
}

//=============================================================
#pragma initialize
//=============================================================

- (void)_initialize
{
    self.asset = [[AXZAsset alloc] init];
    [self _prepareMeterViews];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * PAGE_COUNT);
    [self.view addSubview:scrollView];
    
    for (AXZMeterView *meterView in self.meterViews) {
        [scrollView addSubview:meterView];
    }
}

- (void)_prepareMeterViews
{
    self.meterViews = [[NSMutableArray alloc] init];
    for (int i = 0; i < PAGE_COUNT; i++) {
        UINib *nib = [UINib nibWithNibName:@"AXZMeterView" bundle:nil];
        AXZMeterView *meterView = [nib instantiateWithOwner:self options:nil][0];
        meterView.backgroundImageView.image = self.asset.backgroundImages[i];
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
