#import "UIView+AXZUI.h"

@implementation UIView (UIView_AXZUI)

+ (CGRect)mainSpeedTypeButtonRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(210, 242, 60, 30);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(254.5, 243.5, 60, 30);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(293, 285, 70, 35);
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
        return CGRectMake(452, 338, 97, 49);
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
        return CGRectMake(174, 49, 221, 221);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(203, 58, 260, 260);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(227, 65, 283, 283);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)settingUserNameLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(174, 49, 221, 221);
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
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(174, 49, 221, 221);
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
        return CGRectMake(41, 3, 485, 485);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(49, 3, 568, 568);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(84, 30, 568, 568);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)bankRiderImageViewRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(41, 3, 485, 485);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(447, 269, 485, 485);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(467, 298, 186, 30);
    }
    return CGRectMake(0, 0, 0, 0);
}
@end
