#import "AXZAsset.h"

@interface AXZAsset ()

@property (nonatomic) CGRect screenRect;

@end

@implementation AXZAsset

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.screenRect = [[UIScreen mainScreen] bounds];
    }
    return self;
}

- (NSMutableArray *)backgroundImages
{
    NSMutableArray *backgroundImages = [[NSMutableArray alloc] init];

    [backgroundImages addObject:[UIImage imageNamed:@"df_bk_bg"]];
    [backgroundImages addObject:[UIImage imageNamed:@"xspeed_bg"]];
    [backgroundImages addObject:[UIImage imageNamed:@"bikers_bg"]];
    [backgroundImages addObject:[UIImage imageNamed:@"kkk_bg"]];
    [backgroundImages addObject:[UIImage imageNamed:@"motomoto_bg"]];
    [backgroundImages addObject:[UIImage imageNamed:@"motochamp_bg"]];

    return backgroundImages;
}

- (NSMutableArray *)meterInterfaceImages    
{
    NSMutableArray *meterInterfaceImages = [[NSMutableArray alloc] init];

    if (self.screenRect.size.width == 736 && self.screenRect.size.height == 414) {
        [meterInterfaceImages addObject:[UIImage imageNamed:@"df_red_if"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"xspeed_if"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"bikers_if"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"kkk_if"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"mmw_if"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"mmw_if"]];
    } else {
        [meterInterfaceImages addObject:[UIImage imageNamed:@"df_red_if_55"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"xspeed_if_55"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"bikers_if_55"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"kkk_if_55"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"mmw_if"]];
        [meterInterfaceImages addObject:[UIImage imageNamed:@"mmw_if"]];
    }

    return meterInterfaceImages;
}

- (NSMutableArray *)kmButtonImages
{
    NSMutableArray *kmButtonImages = [[NSMutableArray alloc] init];
    
    [kmButtonImages addObject:[UIImage imageNamed:@"button_km_red"]];
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
    
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_km_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_km_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_km_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_km_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_km_hover_red"]];
    [kmButtonHoverImages addObject:[UIImage imageNamed:@"button_km_hover_red"]];

    return kmButtonHoverImages;
}

- (NSMutableArray *)kmInnerCircleImages
{
    NSMutableArray *innerCircleImages = [[NSMutableArray alloc] init];
    
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_km_red"]];

    return innerCircleImages;
}

- (NSMutableArray *)mphInnerCircleImages
{
    NSMutableArray *innerCircleImages = [[NSMutableArray alloc] init];

    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_mph_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_mph_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_mph_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_mph_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_mph_red"]];
    [innerCircleImages addObject:[UIImage imageNamed:@"inner_circle_mph_red"]];

    return innerCircleImages;
}

- (NSMutableArray *)mphButtonImages
{
    NSMutableArray *mphButtonImages = [[NSMutableArray alloc] init];
    
    [mphButtonImages addObject:[UIImage imageNamed:@"button_mph_red"]];
    [mphButtonImages addObject:[UIImage imageNamed:@"button_mph_red"]];
    [mphButtonImages addObject:[UIImage imageNamed:@"button_mph_red"]];
    [mphButtonImages addObject:[UIImage imageNamed:@"button_mph_red"]];
    [mphButtonImages addObject:[UIImage imageNamed:@"button_mph_red"]];
    [mphButtonImages addObject:[UIImage imageNamed:@"button_mph_red"]];

    return mphButtonImages;
}

- (NSMutableArray *)mphButtonHoverImages
{
    NSMutableArray *mphButtonHoverImages = [[NSMutableArray alloc] init];
    
    [mphButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [mphButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [mphButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [mphButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [mphButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];
    [mphButtonHoverImages addObject:[UIImage imageNamed:@"button_mph_hover_red"]];

    return mphButtonHoverImages;
}

- (UIImageView *)bankBackgroundImageView
{
    if (self.screenRect.size.width == 320) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bank_35_background"]];
    } else if (self.screenRect.size.width == 480) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bank_background"]];
    } else if (self.screenRect.size.width == 667) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bank_background"]];
    } else if (self.screenRect.size.width == 736) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bank_background"]];
    }
    return nil;
}

- (UIImageView *)slopeBackgroundImageView
{
    if (self.screenRect.size.width == 320) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_35_background"]];
    } else if (self.screenRect.size.width == 480) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_background"]];
    } else if (self.screenRect.size.width == 667) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_background"]];
    } else if (self.screenRect.size.width == 736) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_background"]];
    }
    return nil;
}

- (UIImage *)settingBackgroundImage
{
    if (self.screenRect.size.width == 480 && self.screenRect.size.height == 320) {
        return [UIImage imageNamed:@"user_red_background"];
    } else if (self.screenRect.size.width == 568 && self.screenRect.size.height == 320) {
        return [UIImage imageNamed:@"user_red_background"];
    } else if (self.screenRect.size.width == 667 && self.screenRect.size.height == 375) {
        return [UIImage imageNamed:@"user_red_background"];
    } else if (self.screenRect.size.width == 736 && self.screenRect.size.height == 414) {
        return [UIImage imageNamed:@"user_red_background"];
    }
    return nil;
}

- (UIImageView *)settingUserImageView
{
    if (self.screenRect.size.width == 320) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_35_background"]];
    } else if (self.screenRect.size.width == 480) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_background"]];
    } else if (self.screenRect.size.width == 667) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_background"]];
    } else if (self.screenRect.size.width == 736) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slope_background"]];
    }
    return nil;
}

- (UIImageView *)blueToothImageView
{
    if (self.screenRect.size.width == 736 && self.screenRect.size.height == 414) {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bluetooth_if"]];
    } else {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bluetooth_if_55"]];
    }
    return nil;
}

@end
