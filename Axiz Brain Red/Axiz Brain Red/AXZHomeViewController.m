#import "AXZHomeViewController.h"
#import "AXZMeterView.h"
#import "AXZAsset.h"

#define PAGE_COUNT 5

@interface AXZHomeViewController () <AXZMeterViewDelegate>

@property (nonatomic) AXZAsset *asset;
@property (nonatomic) NSMutableArray *meterViews;

@property (nonatomic) UIScrollView *scrollView;

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
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.scrollView.pagingEnabled = YES;
    self.scrollView.bounces = NO;
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * PAGE_COUNT);
    [self.view addSubview:self.scrollView];
    
    for (AXZMeterView *meterView in self.meterViews) {
        [self.scrollView addSubview:meterView];
    }
}

- (void)_prepareMeterViews
{
    self.meterViews = [[NSMutableArray alloc] init];
    for (int i = 0; i < PAGE_COUNT; i++) {
        UINib *nib = [UINib nibWithNibName:@"AXZMeterView" bundle:nil];
        AXZMeterView *meterView = [nib instantiateWithOwner:self options:nil][0];
        meterView.delegate = self;
        meterView.backgroundImageView.image = self.asset.backgroundImages[i];
        meterView.innerCircleImageView.image = self.asset.innerCircleImages[i];
        [meterView.kmButton setImage:self.asset.kmButtonImages[i] forState:UIControlStateNormal];
        [meterView.kmButton setImage:self.asset.kmButtonHoverImages[i] forState:UIControlStateHighlighted];
        
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
    CGPoint offset;
    offset.x = 0;
    offset.y = 0;
    
    [self.scrollView setContentOffset:offset animated:YES];
}

@end
