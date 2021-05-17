#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *arrayCopy = [NSMutableArray array];
    NSMutableArray *numArray = [NSMutableArray array];
    NSMutableArray *strArray = [NSMutableArray array];
    
    
    if (![array[0] isKindOfClass:[NSArray class]]) {
        return @[];
    }
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array[i].count; j++) {
            
            [arrayCopy addObject: array[i][j]];
            
            if ([array[i][j] isKindOfClass:[NSNumber class]]) {
                [numArray addObject: array[i][j]];
            }
            
            else if ([array[i][j] isKindOfClass:[NSString class]]) {
                [strArray addObject: array[i][j]];
            }
        }
    }
    [numArray sortUsingSelector:@selector(compare:)];
    [strArray sortUsingSelector:@selector(compare:)];
    
    if (numArray.count != 0) {
        if (strArray.count != 0) {
            NSMutableArray *numStrArray = [NSMutableArray array];
            numStrArray[0] = numArray;
            numStrArray[1] = [[strArray reverseObjectEnumerator] allObjects];
            return numStrArray;
        }
        return numArray;
    }
    else if (strArray.count != 0) {
        return strArray;
    }
    return @[];
}
@end
