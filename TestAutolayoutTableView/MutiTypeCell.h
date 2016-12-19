//
//  MutiTypeCell.h
//  TestAutolayoutTableView
//
//  Created by iceboxi on 2016/12/19.
//  Copyright © 2016年 iceboxi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CellType) {
    CellType1,
    CellType2
};

@interface MutiTypeCell : UITableViewCell

@property (strong, nonatomic) NSString *title;

+ (instancetype)cellWithTableView:(UITableView *)tableView cellType:(CellType)type;

@end

@interface MutiTypeCellOther : MutiTypeCell

@end
