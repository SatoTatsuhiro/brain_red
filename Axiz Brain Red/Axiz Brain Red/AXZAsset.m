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
    
    [kmButtonImages addObject:[UIImage imageNamed:@"button_km_red"]];
    [kmButtonImages addObject:[UIImage imageNamed:@"button_km_red"]];
    [kmButtonImages addObject:[UIImage imageNamed:@"button_km_red"]];
    [kmButtonImages addObject:[UIImage imageNamed:@"button_km_red"]];
    [kmButtonImages addObject:[UIImage imageNamed:@"button_km_red"]];
    
    return kmButtonImages;
}

- (NSMutableArray *)kmButtonHoverImages
{
    NSMutableArray *kmButtonHoverImages = [[NSMutableArray alloc] init];
    
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];

    return kmButtonHoverImages;
}

- (NSMutableArray *)innerCircleImages
{
    NSMutableArray *innerCircleImages = [[NSMutableArray alloc] init];
    
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    
    return innerCircleImages;
}

@end
