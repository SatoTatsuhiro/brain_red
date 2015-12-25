#import "UIView+AXZUI.h"

@implementation UIView (UIView_AXZUI)

+ (CGRect)mainSpeedTypeButtonRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(210, 242, 60, 30);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(254.5, 238, 60, 30);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(298, 278, 70, 35);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(329, 313, 80, 40);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)mainInnerCircleImageViewRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(179, 55, 210, 210);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(210, 63, 245, 245);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(227, 65, 283, 283);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)mainSpeedLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 42, 21);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(263, 205, 42, 21);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(312, 241, 42, 21);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(347, 266, 42, 21);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)mainBankLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 42, 21);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(92, 197, 42, 21);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(112, 233, 42, 21);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(113, 257, 42, 21);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)mainSlopeLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 42, 21);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(434, 195, 42, 21);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(514, 233, 42, 21);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(583, 257, 42, 21);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)mainSpeedPinRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 42, 21);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(173, 49, 222, 222);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(203, 58, 260, 260);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(218, 58, 300, 300);
    }

    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)bankLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(294, 258, 193, 52);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(356, 303, 193, 52);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(409, 344, 193, 52);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)slopeLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(339, 256, 97, 49);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(408, 304, 97, 49);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(452, 338, 97, 49);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)settingUserImageRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(73, 56, 200, 200);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(87, 70, 232, 232);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(97, 75, 254, 254);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)settingUserNameLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(356, 200, 186, 30);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(447, 240, 186, 30);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(467, 265, 186, 30);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)settingUserMachineNameLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 186, 30);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(356, 228, 186, 30);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(447, 269, 186, 30);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(467, 298, 186, 30);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)slopeRiderImageViewRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(41, 16, 485, 485);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(49, 20, 568, 568);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(83, 27, 568, 568);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)bankRiderImageViewRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(42, 3, 485, 485);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(49, 9, 568, 568);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(84, 29, 568, 568);
    }
    return CGRectMake(0, 0, 0, 0);
}
@end
