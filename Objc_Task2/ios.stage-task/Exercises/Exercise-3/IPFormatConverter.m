#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableString *resultString = [NSMutableString string];
    
    if (numbersArray == nil) {
        return @"";
    }
    
    else if (numbersArray.count == 0) {
        return @"";
    }
    
     if (numbersArray.count <= 4) {

        for (NSInteger i = 0; i < 4; i++) {
            if (numbersArray.count < i + 1) {
                [resultString appendFormat:@"0."];
                continue;
            }
            
             if ([numbersArray[i] intValue] < 0) {
                return @"Negative numbers are not valid for input.";
            }
            else if ([numbersArray[i] intValue] > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }
            
            [resultString appendFormat:@"%@.", [numbersArray[i] stringValue]];
        }
        [resultString deleteCharactersInRange:NSMakeRange([resultString length]-1, 1)];
    }
    else {
        return nil;
    }
   return resultString;
}

@end
