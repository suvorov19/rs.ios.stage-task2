#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSMutableArray *reversedbinaryArray = [NSMutableArray array];
    
    for (int i = 0; i < 8; i++) {
        
        if (n % 2 == 0) {
            [reversedbinaryArray insertObject:@"0" atIndex:i];
        }
        
        else {
            [reversedbinaryArray insertObject:@"1" atIndex:i];
        }
        
        n /= 2;
    }
    
    UInt8 reversedDecimalNumber = 0;
    int multiplier = 1;
    
    for (int i = 7; i >= 0; i--) {
        reversedDecimalNumber += [reversedbinaryArray[i] intValue] * multiplier;
        multiplier *= 2;
    }
    
    return reversedDecimalNumber;
}
