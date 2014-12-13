#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    float timeSinceObstacle;
    //call method addObstacle()
    [self addObstacle];
    
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    [character flap];
    
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
   // this will get called every time the player touches the screen
    [character flap];
    
}

@end
