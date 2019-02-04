//
//  ViewController.m
//  TomCat
//
//  Created by Stephen Cao on 4/2/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)drinkMilk:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *mImageView;
- (IBAction)fart:(id)sender;
-(void)setImageViewAnimationWithCount:(int) imageCount andName:(NSString *) fileName;
- (IBAction)knockOut:(id)sender;
- (IBAction)larry:(id)sender;
- (IBAction)cynbals:(id)sender;
- (IBAction)pawn:(id)sender;
- (IBAction)pie:(id)sender;
- (IBAction)stomach:(id)sender;
- (IBAction)leftFoot:(id)sender;
- (IBAction)rightFoot:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)drinkMilk:(id)sender {
    [self setImageViewAnimationWithCount:81 andName:@"drink"];
    
}
- (IBAction)fart:(id)sender {
    [self setImageViewAnimationWithCount:28 andName:@"fart"];
    
    
}
-(void)setImageViewAnimationWithCount:(int) imageCount andName:(NSString *) fileName{
    if(self.mImageView.isAnimating){
        return;
    }
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    for(int i = 0; i < imageCount; i++){
        NSString * name = [NSString stringWithFormat:@"%@_%02d.jpg",fileName,i];
//        In this way, images will be stored in the cache.
//        UIImage *img = [UIImage imageNamed:name];
        NSString *path =  [[NSBundle mainBundle]pathForResource:name ofType:nil];
        UIImage *img = [UIImage imageWithContentsOfFile:path];
        [images addObject:img];
    }
    self.mImageView.animationImages = images;
    self.mImageView.animationDuration = self.mImageView.animationImages.count * 0.1;
    self.mImageView.animationRepeatCount = 1;
    [self.mImageView startAnimating];
    [self.mImageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.mImageView.animationImages.count * 0.1];
}

- (IBAction)knockOut:(id)sender {
    [self setImageViewAnimationWithCount:81 andName:@"knockout"];
}

- (IBAction)larry:(id)sender {
    [self setImageViewAnimationWithCount:40 andName:@"eat"];
}

- (IBAction)cynbals:(id)sender {
    [self setImageViewAnimationWithCount:13 andName:@"cymbal"];
}

- (IBAction)pawn:(id)sender {
    [self setImageViewAnimationWithCount:56 andName:@"scratch"];
}

- (IBAction)pie:(id)sender {
    [self setImageViewAnimationWithCount:24 andName:@"pie"];
}

- (IBAction)stomach:(id)sender {
    [self setImageViewAnimationWithCount:34 andName:@"stomach"];
}

- (IBAction)leftFoot:(id)sender {
    [self setImageViewAnimationWithCount:30 andName:@"foot_right"];
}

- (IBAction)rightFoot:(id)sender {
    [self setImageViewAnimationWithCount:30 andName:@"foot_left"];
}
@end
