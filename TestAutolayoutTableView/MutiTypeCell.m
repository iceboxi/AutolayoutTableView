//
//  MutiTypeCell.m
//  TestAutolayoutTableView
//
//  Created by iceboxi on 2016/12/19.
//  Copyright © 2016年 iceboxi. All rights reserved.
//

#import "MutiTypeCell.h"

@interface MutiTypeCell ()

@property (weak, nonatomic) IBOutlet UILabel *message;

@end

@implementation MutiTypeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)cellWithTableView:(UITableView *)tableView cellType:(CellType)type {
    static NSString *reuseIdentifier;
    NSInteger index = 0;
    if (type == CellType1) {
        reuseIdentifier = @"CellType1";
    }else if (type == CellType2) {
        reuseIdentifier = @"CellType2";
        index= 1;
    }
    MutiTypeCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"MutiTypeCell" owner:self options:0][index];
        cell.backgroundColor = [UIColor clearColor];
    }
    return cell;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    
    self.message.text = title;
}

@end

@interface MutiTypeCellOther ()

@property (weak, nonatomic) IBOutlet UILabel *messageOther;

@end

@implementation MutiTypeCellOther

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
    
    self.messageOther.text = title;
}

@end
