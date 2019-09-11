//
//  Language.h
//  LanguageLearning
//
//  Created by 陈统盼 on 2019/8/31.
//  Copyright © 2019 TMachine. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Language : NSObject {
    NSInteger progress_tour;
    NSInteger progress_unit;
    NSDate *date_;
}

- (void)learnOneUnit;
- (NSInteger)getTour;
- (NSInteger)getUnit;
- (bool)isFinish;
- (NSString *)getName;

@end

@interface English : Language {
    
}

@end

@interface Japanese : Language {
    
}

@end

@interface German : Language {
    
}

@end

@interface Spanish : Language {
    
}

@end

NS_ASSUME_NONNULL_END
