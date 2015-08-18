//
//  HeroesTableViewController.m
//  Heroes
//
//  Created by user on 07.08.15.
//  Copyright (c) 2015 user. All rights reserved.
//

#import "HeroesTableViewController.h"

@interface HeroesTableViewController ()
@property(nonatomic,strong)NSMutableArray *heroesPictire;
@property(nonatomic,strong)NSMutableArray *heroesText;

@end

@implementation HeroesTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSArray* text=	[NSArray arrayWithObjects:@"archangel",@"devil",@"dragon",@"elf",@"fairy",@"gargoule",@"phoenix",@"scelet",@"titan",@"unicorn", nil];
    self.heroesText = [NSMutableArray arrayWithArray:text];
    self.heroesPictire=[NSMutableArray arrayWithObjects:@"archangel",@"devil",@"dragon",@"elf",@"fairy",@"gargoule",@"phoenix",@"scelet",@"titan",@"unicorn", nil];

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* identifier = @"Cell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:identifier];
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        
        if (!cell) {
            
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:identifier];
            
            if ([self.heroesText count] >= 1) {
                
                NSInteger index = arc4random()%[self.heroesText count];
                
                cell.textLabel.text = [self.heroesText objectAtIndex:index];
                
                [self.heroesText removeObjectAtIndex:index];
            }
            
            if ([self.heroesPictire count] >= 1) {
                
                NSInteger index = arc4random()%[self.heroesPictire count];
                
                cell.imageView.image = [UIImage imageNamed:[self.heroesPictire objectAtIndex:index]];
                
                [self.heroesPictire removeObjectAtIndex:index];
            }
            
            cell.textLabel.textColor = [UIColor orangeColor];
            cell.textLabel.shadowColor = [UIColor yellowColor];
        }
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/







@end
