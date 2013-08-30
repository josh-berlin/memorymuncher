#import "MMDestroyer.h"

@interface MMDestroyer ()
@property(nonatomic, strong) NSMutableArray *bunchaImages;
@end

@implementation MMDestroyer

- (void)destroyAndEatAllMemory {
  self.bunchaImages = [NSMutableArray array];
  for (int i = 0; i < 100000000; i++) {
    double delayInSeconds = 0.1f;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
      UIImage *image = [[UIImage alloc] initWithContentsOfFile:@"fighttheflu.jpg"];
      CGRect bounds = CGRectMake(0, 0, 400, 400);
      UIGraphicsBeginImageContext(bounds.size);
      [image drawInRect:bounds];
      UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [self.bunchaImages addObject:newImage];
    });
  }
}

@end
