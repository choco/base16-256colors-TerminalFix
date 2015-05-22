//
//  base16Terminal256colorsFix.m
//  base16-256colors-TerminalFix
//
//  Created by Enrico "cHoco" Ghirardi on 23/5/15.
//  Copyright (c) 2015 cHoco. All rights reserved.
//

#import "base16Terminal256colorsFix.h"
#import "JRSwizzle/JRSwizzle.h"

@implementation base16Terminal256colorsFix

+ (void)load {
    [NSClassFromString(@"TTView")
        jr_swizzleMethod:@selector(colorForANSIColor:adjustedRelativeToColor:withProfile:)
              withMethod:@selector(base16Terminal256colorsFix_colorForANSIColor:adjustedRelativeToColor:withProfile:)
                   error:NULL];
}

@end

@implementation NSView(TTView)

- (id)base16Terminal256colorsFix_colorForANSIColor:(unsigned long long)color
                           adjustedRelativeToColor:(id)relative
                                       withProfile:(id)profile {
    unsigned long long swizzledColor;

    switch (color) {
        case 10:
            swizzledColor = 2;
            break;
        case 11:
            swizzledColor = 3;
            break;
        case 12:
            swizzledColor = 4;
            break;
        case 13:
            swizzledColor = 5;
            break;
        case 14:
            swizzledColor = 6;
            break;
        case 15:
            swizzledColor = 7;
            break;
        case 1016:
            swizzledColor = 10;
            break;
        case 1017:
            swizzledColor = 15;
            break;
        case 1018:
            swizzledColor = 11;
            break;
        case 1019:
            swizzledColor = 12;
            break;
        case 1020:
            swizzledColor = 13;
            break;
        case 1021:
            swizzledColor = 14;
            break;
        default:
            swizzledColor = color;
            break;
    }

    return [self base16Terminal256colorsFix_colorForANSIColor:swizzledColor
                                      adjustedRelativeToColor:relative
                                                  withProfile:profile];
}

@end
