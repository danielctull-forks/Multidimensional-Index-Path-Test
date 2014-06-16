//
//  Presenter.m
//  Multidimensional Index Path Test
//
//  Created by Daniel Tull on 13/06/2014.
//  Copyright (c) 2014 Daniel Tull. All rights reserved.
//

#import "Presenter.h"

@implementation Presenter

- (instancetype)initWithIndexPath:(NSIndexPath *)indexPath childPresenters:(NSArray *)childPreseters {
	self = [self init];
	if (!self) return nil;
	_childPresenters = [childPreseters copy];
	_indexPath = [indexPath copy];
	return self;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {

	if (!self.childPresenters) {

		

	}

	NSUInteger indexPathLength = self.indexPath.length;
	NSAssert(indexPath.length > indexPathLength, @"The indexPath requested (%@) should be bigger than the presenter's index path (%@)", indexPath, self.indexPath);

	NSUInteger index = [indexPath indexAtPosition:indexPathLength];

	NSArray *presenters = [self.childPresenters filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(Presenter *presenter, NSDictionary *bindings) {

		NSUInteger i = [presenter.indexPath indexAtPosition:indexPathLength];
		return index == i;
	}]];

	NSAssert(presenters.count == 1, @"Only one presenter should match. %@", presenters);

	Presenter *childPresenter = presenters.firstObject;
	return [childPresenter layoutAttributesForItemAtIndexPath:indexPath];
}

@end
