//
//  Presenter.h
//  Multidimensional Index Path Test
//
//  Created by Daniel Tull on 13/06/2014.
//  Copyright (c) 2014 Daniel Tull. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface Presenter : NSObject

- (instancetype)initWithIndexPath:(NSIndexPath *)indexPath childPresenters:(NSArray *)childPreseters;
@property (nonatomic) NSIndexPath *indexPath;
@property (nonatomic) NSArray *childPresenters;

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath;

@end
