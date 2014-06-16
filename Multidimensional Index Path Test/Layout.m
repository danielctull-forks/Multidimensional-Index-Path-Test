//
//  Layout.m
//  Multidimensional Index Path Test
//
//  Created by Daniel Tull on 13/06/2014.
//  Copyright (c) 2014 Daniel Tull. All rights reserved.
//

#import "Layout.h"
#import "Presenter.h"

@interface Layout ()
@property (nonatomic) NSArray *presenters;
@end

@implementation Layout

- (void)prepareLayout {
	[super prepareLayout];

	NSMutableArray *presenters = [NSMutableArray new];
	for (NSUInteger i = 0; i < 10; i++) {
		NSIndexPath *indexPath = [NSIndexPath indexPathWithIndex:i];
		Presenter *presenter = [[Presenter alloc] initWithIndexPath:indexPath childPresenters:nil];
		[presenters addObject:presenter];
	}

	self.presenters = [presenters copy];
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {

	

}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {

	

	[indexPath indexAtPosition:0];
	return nil;
}

@end
