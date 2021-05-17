#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *arrayCopy = [NSMutableArray array];
    NSMutableArray *newArray = [NSMutableArray array];
    
    if (![array[0] isKindOfClass:[NSArray class]]) {
        return @[];
    }
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array[i].count; j++) {
            
            [arrayCopy addObject: array[i][j]];
            
            if ([arrayCopy[i] isKindOfClass:[NSNumber class]]) {
                [newArray addObject: array[i][j]];
            }
            
            else if ([arrayCopy[i] isKindOfClass:[NSString class]]) {
                [newArray addObject: array[i][j]];
            }
            
            [newArray sortUsingSelector:@selector(compare:)];
        }
    }
    return newArray;
}
@end
