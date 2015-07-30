#import "AXZAsset.h"

@implementation AXZAsset

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

- (NSMutableArray *)kmButtonImages
{
    NSMutableArray *kmButtonImages = [[NSMutableArray alloc] init];
    
    [kmButtonImages addObject:[UIImage imageNamed:@""]];
    [kmButtonImages addObject:[UIImage imageNamed:@""]];
    [kmButtonImages addObject:[UIImage imageNamed:@""]];
    [kmButtonImages addObject:[UIImage imageNamed:@""]];
    [kmButtonImages addObject:[UIImage imageNamed:@""]];
    
    return kmButtonImages;
}

- (NSMutableArray *)kmButtonHoverImages
{
    NSMutableArray *kmButtonHoverImages = [[NSMutableArray alloc] init];
    
    [kmButtonHoverImages addObject:[UIImage imageNamed:@""]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@""]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@""]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@""]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@""]];
    
    return kmButtonHoverImages;
}

- (NSMutableArray *)innerCircleImages
{
    NSMutableArray *innerCircleImages = [[NSMutableArray alloc] init];
    
    [innerCircleImages addObject:[UIImage imageNamed:@""]];
    [innerCircleImages addObject:[UIImage imageNamed:@""]];
    [innerCircleImages addObject:[UIImage imageNamed:@""]];
    [innerCircleImages addObject:[UIImage imageNamed:@""]];
    [innerCircleImages addObject:[UIImage imageNamed:@""]];
    
    return innerCircleImages;
}

@end
