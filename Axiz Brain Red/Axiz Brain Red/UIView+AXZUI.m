#import "UIView+AXZUI.h"

@implementation UIView (UIView_AXZUI)

//=============================================================
#pragma AXZMeterView
//=============================================================

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
        return CGRectMake(264, 203, 42, 21);
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
        return CGRectMake(93, 193, 42, 21);
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
        return CGRectMake(434, 193, 42, 21);
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
        return CGRectMake(183, 59, 202, 202);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(213, 68, 240, 240);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(223, 63, 290, 290);
    }

    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)cbrSpeedPinRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(78, 146, 130, 130);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(78, 146, 130, 130);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(95, 178, 145, 145);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(0, 0, 0, 0);
    }
    
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)cbrEnginePinRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(236, 44, 130, 130);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(236, 44, 130, 130);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(281, 56, 145, 145);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(0, 0, 0, 0);
    }
    
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)cbrSpeedLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(98, 54, 42, 21);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(98, 54, 42, 21);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(115, 68, 42, 21);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(133, 77, 42, 21);
    }
    
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)cbrBankLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(98, 79, 42, 21);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(98, 79, 42, 21);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(115, 96, 42, 21);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(133, 106, 42, 21);
    }
    
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)cbrSlopeLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(98, 103, 42, 21);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(98, 103, 42, 21);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(115, 123, 42, 21);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(133, 136, 42, 21);
    }
    
    return CGRectMake(0, 0, 0, 0);
}

//=============================================================
#pragma AXZBankViewController
//=============================================================

+ (CGRect)bankLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(290, 262, 193, 52);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(403, 318, 97, 49);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(444, 348, 97, 49);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)bankRiderImageViewRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(56, 26, 455, 455);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(56, 26, 455, 455);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(66, 31, 535, 535);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(68, 31, 600, 600);
    }
    return CGRectMake(0, 0, 0, 0);
}

//=============================================================
#pragma AXZSettingViewController
//=============================================================

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

+ (float)settingUserIconImageRadian
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return 100;
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return 100;
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return 113;
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return 125;
    }
    return 0;
}

//=============================================================
#pragma AXZSlopeViewController
//=============================================================

+ (CGRect)slopeRiderImageViewRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];

    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(56, 26, 455, 455);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(56, 26, 455, 455);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(66, 31, 535, 535);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(68, 31, 600, 600);
    }
    return CGRectMake(0, 0, 0, 0);
}

+ (CGRect)slopeLabelRect
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    if (screenRect.size.width == 480 && screenRect.size.height == 320) {
        return CGRectMake(130, 49, 221, 221);
    } else if (screenRect.size.width == 568 && screenRect.size.height == 320) {
        return CGRectMake(339, 262, 97, 49);
    } else if (screenRect.size.width == 667 && screenRect.size.height == 375) {
        return CGRectMake(408, 312, 97, 49);
    } else if (screenRect.size.width == 736 && screenRect.size.height == 414) {
        return CGRectMake(444, 348, 97, 49);
    }
    return CGRectMake(0, 0, 0, 0);
}

@end
