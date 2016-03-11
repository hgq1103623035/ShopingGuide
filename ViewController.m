//
//  ViewController.m
//  ShopingGuide
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "ViewController.h"
#import "LuxuriesController.h"
#import "HappyViewController.h"
#import "HttpManager.h"
#import "MainModel.h"
#import "CollectionCell.h"
#import "UIImageView+WebCache.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width


@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property(nonatomic,retain)UICollectionView * myColl;
@property(nonatomic,retain)NSMutableArray * dataArray;

@end

@implementation ViewController




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //self.navigationController.navigationBarHidden = YES;
   // [self.navigationController.navigationBar setBackgroundColor:[UIColor colorWithRed:239 green:239 blue:239 alpha:1]];
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"BarBg"] forBarMetrics:0];
     //self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"setting"] style:UIBarButtonItemStyleDone target:self action:@selector(buttonClick)];
//    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:239 green:239 blue:239 alpha:1];
    
    [self.view addSubview:self.myColl];
    
    [HttpManager getMainCompletion:^(id data) {
        _dataArray = data;
        [_myColl reloadData];
    }];
}


-(NSMutableArray *)dataArray
{
    if (!_dataArray)
    {
        _dataArray = [[NSMutableArray alloc]init];
    }
    return _dataArray;
    
}
-(UICollectionView *)myColl
{
    if (!_myColl)
    {
        UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 10, 5);
        layout.itemSize = CGSizeMake(WIDTH-10, 80);
        _myColl = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
        _myColl.delegate  =self;
        _myColl.dataSource  =self;
        _myColl.backgroundColor = [UIColor grayColor];
        [_myColl registerNib:[UINib nibWithNibName:@"CollectionCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    }
    return _myColl;
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _dataArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    MainModel * model = _dataArray[indexPath.row];
    cell.contentView.backgroundColor = [UIColor colorWithRed:239 green:239 blue:239 alpha:1];
    [cell.bgImg sd_setImageWithURL:[NSURL URLWithString:model.imageURL]];
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.item == 0 || indexPath.item == 2 || indexPath.item == 3 || indexPath.row == 5 || indexPath.item == 6 || indexPath.item == 7)
    {
        LuxuriesController * VC = [[LuxuriesController alloc]init];
        if (indexPath.item == 0)
        {
            VC.title = @"奢品";
        }
        if (indexPath.item == 2)
        {
            VC.title = @"美容";
        }
        if (indexPath.item == 3)
        {
            VC.title = @"健康";
        }
        if (indexPath.item == 5)
        {
            VC.title = @"精英";
        }
        if (indexPath.item == 6)
        {
            VC.title = @"家品";
        }
        if (indexPath.item == 7)
        {
            VC.title = @"汽车";
        }
        
        
        VC.index = indexPath.item;
        
        [self.navigationController pushViewController:VC animated:YES];
    }
    else
    {
        HappyViewController * VC = [[HappyViewController alloc]init];
        if (indexPath.row == 1)
        {
            VC.title = @"乐活";
        }
        else
        {
            VC.title = @"娱乐";
        }
        VC.index = indexPath.row ;
        [self.navigationController pushViewController:VC animated:YES];
        
    }
    
}


-(void)buttonClick
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
