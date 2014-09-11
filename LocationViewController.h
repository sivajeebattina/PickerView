//
//  LocationViewController.h
//  Pickers
//
//  Created by pcs20 on 9/10/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

{
    NSArray *stateData;
    NSArray *apdistrictData;
    NSArray *tgdistrictData;

    NSArray *vizagVillageData;
    NSArray *VZNVillageData;
    NSArray *krishnaVillageData;
    NSArray *gunturVillageData;
    
    NSArray *warangalVillageData;
    NSArray *khammamVillageData;
    NSArray *hyderabadVillageData;
    NSArray *adilabadVillageData;
    
    
    NSArray *stateComponent;
    NSArray *districtComponent;
    NSArray *regionComponent;
    
 
    
    BOOL isChanged;






}

@property(nonatomic,weak)IBOutlet UIPickerView *locationpicker;



@end
