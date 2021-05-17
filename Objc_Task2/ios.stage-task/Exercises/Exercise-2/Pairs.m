#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int count = 0;
    
    for (NSInteger i = 0; i < array.count; i++) {
        for (NSInteger j = i + 1; j < array.count; j++) {
            
            if ([array[j] intValue] - [array[i] intValue] == [number intValue]) {
                count++;
            }
        }
    }
    return count;
}
@end
