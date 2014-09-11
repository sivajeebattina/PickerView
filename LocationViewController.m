//
//  LocationViewController.m
//  Pickers
//
//  Created by pcs20 on 9/10/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
  
    
    
    stateData=@[@"Andhrapradesh",@"Telangana"];
    apdistrictData=@[@"Vizag",@"Krishna",@"Guntur",@"VZ nagaram"];
    tgdistrictData=@[@"Warangal",@"Khammam",@"Hyderabad",@"Adilabad"];
    
    vizagVillageData=@[@"Anakapalle",@"Chodavaram",@"Atchutapuram",@"Munagapaka"];
    VZNVillageData=@[@"TagarapuValasa",@"Bhogapuram",@"Bobbili",@"Parvathipuram"];
    krishnaVillageData=@[@"Nuzvid",@"Gannavaram",@"Mylavaram",@"H Junction"];
    gunturVillageData=@[@"Ch Peta",@"Guntur",@"Sattepalle",@"Repalle"];
    
    warangalVillageData=@[@"Nekkonda",@"Kazipet",@"Ghanpur",@"Hanmakonda"];
    khammamVillageData=@[@"Rao peta",@"SH Junction",@"AR puram",@"NS Colony"];
    hyderabadVillageData=@[@"Secendrabad",@"Rangareddy",@"HItech",@"Hyderabd"];
    adilabadVillageData=@[@"Basara",@"BP udi",@"Mahabub nagar",@"RM palem"];
    
    
    
    
    

    stateComponent=stateData;
    districtComponent=apdistrictData;
    regionComponent=vizagVillageData;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;


}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    

    if (component==0) {
        return [stateData count];
        
    }
    else if(component==1){
        return [apdistrictData count];}
    else if(component==2){
    return [vizagVillageData count];
        
    }
    
    
    return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
   
    
    switch (component) {
        case 0:
            return [stateComponent objectAtIndex:row];

            break;
        case 1:
            return [districtComponent objectAtIndex:row];
            break;
        case 2:
            return [regionComponent objectAtIndex:row];
            //return @"update";
            break;
        default:
            break;
    }
    
    
    
    return @"None";


}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
   
    if(component==0 && row==1){
        districtComponent=tgdistrictData;
        regionComponent=warangalVillageData;
        
        [_locationpicker selectRow:0 inComponent:1 animated:YES];
        
       
        [_locationpicker reloadAllComponents];
         //row=0;
        
        
    }
    
    /*
    
    if(component==1 && row==0){
        
        
       
    }
    
    else if(component==1 && row==1){
        regionComponent=khammamVillageData;
        
        [_locationpicker reloadAllComponents];
    }
    
    else if(component==1 && row==2){
        regionComponent=hyderabadVillageData;
        
        [_locationpicker reloadAllComponents];
    }
    else if(component==1 && row==3){
        
        regionComponent=adilabadVillageData;
        [_locationpicker reloadAllComponents];
    }
    
    */
  
   if(component==0 && row==0){
        districtComponent=apdistrictData;
        regionComponent=vizagVillageData;
       
         [_locationpicker selectRow:0 inComponent:1 animated:YES];
        
        [_locationpicker reloadAllComponents];
    }
    
    
    
    if(component==1 && row==0){
        NSString * title =[self pickerView:self.locationpicker titleForRow:0 forComponent:1];
        if(title==[tgdistrictData objectAtIndex:0]){
            regionComponent=warangalVillageData;
            [_locationpicker reloadAllComponents];
            
        }
        
        else{
        
            regionComponent=vizagVillageData;
            [_locationpicker reloadAllComponents];
        }
    
    }
    
    else if(component==1 && row==1){
        
        NSString * title =[self pickerView:self.locationpicker titleForRow:1 forComponent:1];
        if(title==[tgdistrictData objectAtIndex:1]){
            regionComponent=khammamVillageData;
            [_locationpicker reloadAllComponents];
            
        }
        
        else{
            
            regionComponent=krishnaVillageData;
            [_locationpicker reloadAllComponents];
        }
        
        
    }
    
    else if(component==1 && row==2){
        
        NSString * title =[self pickerView:self.locationpicker titleForRow:2 forComponent:1];
        if(title==[tgdistrictData objectAtIndex:2]){
            regionComponent=hyderabadVillageData;
            [_locationpicker reloadAllComponents];
            
        }
        
        else{
            
            regionComponent=gunturVillageData;
            [_locationpicker reloadAllComponents];
        }

        
        
    }
    else if(component==1 && row==3){
        
        NSString * title =[self pickerView:self.locationpicker titleForRow:3 forComponent:1];
        if(title==[tgdistrictData objectAtIndex:3]){
            regionComponent=adilabadVillageData;
            [_locationpicker reloadAllComponents];
            
        }
        
        else{
            
            
            regionComponent=VZNVillageData;
            [_locationpicker reloadAllComponents];
        }

        
    }

   
}



@end
