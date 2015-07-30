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

@end
