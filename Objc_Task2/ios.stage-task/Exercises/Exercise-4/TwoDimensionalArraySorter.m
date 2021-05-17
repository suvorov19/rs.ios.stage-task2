#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *arrayCopy = [NSMutableArray array];
    NSMutableArray *nArray = [NSMutableArray array];
    NSMutableArray *sArray = [NSMutableArray array];
    
    
    if (![array[0] isKindOfClass:[NSArray class]]) {
        return @[];
    }
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array[i].count; j++) {
            
            [arrayCopy addObject: array[i][j]];
            
            if ([array[i][j] isKindOfClass:[NSNumber class]]) {
                [nArray addObject: array[i][j]];
            }
            
            else if ([array[i][j] isKindOfClass:[NSString class]]) {
                [sArray addObject: array[i][j]];
            }
        }
    }
    [nArray sortUsingSelector:@selector(compare:)];
    [sArray sortUsingSelector:@selector(compare:)];
    
    if (nArray.count != 0) {
        if (sArray.count != 0) {
            
            [nArray addObjectsFromArray: sArray];
            return nArray;
        }
        return nArray;
    }
    
    if (sArray.count != 0) {
        return sArray;
    }
    return @[];
}
@end
