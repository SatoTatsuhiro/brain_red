#import "UILabel+AXZUI.h"

@implementation UILabel (UILabel_AXZUI)

+ (UIFont *)mainLabelFont
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return [UIFont systemFontOfSize:14];
    }
    return nil;
}

+ (UIFont *)bankLabelFont
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return [UIFont systemFontOfSize:14];
    }
    return nil;
}

+ (UIFont *)slopeLabelFont
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return [UIFont systemFontOfSize:14];
    }
    return nil;
}

+ (UIFont *)settingUserMachineTextFieldFont
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return [UIFont systemFontOfSize:14];
    }
    return nil;
}

+ (UIFont *)settingUserNameTextFieldFont
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return [UIFont systemFontOfSize:14];
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return [UIFont systemFontOfSize:14];
    }
    return nil;
}

@end
