//
//  ZZCollectionViewCell.m
//  ZZToolsDemo
//
//  Created by 刘猛 on 2019/2/3.
//  Copyright © 2019年 刘猛. All rights reserved.
//

#import "ZZCollectionViewCell.h"

@interface ZZCollectionViewCell ()

/**显示内容的label*/
@property (nonatomic , strong) UILabel  *titleLabel;

@end

@implementation ZZCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        self.titleLabel = [[UILabel alloc] init];
        self.contentView.frame = self.bounds;
        [self.contentView addSubview:self.titleLabel];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

- (void)setModel:(ZZModel *)model {
    _model = model;
    
    //1.为视图填充数据
    self.titleLabel.text = model.title;
    self.titleLabel.frame = self.bounds;
    
}

- (void)setTitle:(NSString *)title {
    _title = title;
    
    //1.为视图填充数据
    self.titleLabel.text = title;
    self.titleLabel.frame = self.bounds;
    
}

////返回特定的高
//- (ZZcollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(ZZcollectionViewLayoutAttributes *)layoutAttributes {
//    ZZcollectionViewLayoutAttributes *attributes = [layoutAttributes copy];
//    //dispatch_async(dispatch_get_main_queue(), ^{
//        [super preferredLayoutAttributesFittingAttributes:layoutAttributes];
//        //NSLog(@"preferredLayoutAttributesFittingAttributes: self.model.cellHeight === %.2f",self.model.cellHeight);
//        attributes.size = CGSizeMake(attributes.size.width, self.model.cellHeight);
//    //});
//    return attributes;
//}

@end
