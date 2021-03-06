struct Sprite
{
  size_t width, height;
  ubyte[] data;
};

struct AlienAnimation
{
  bool loop;
  size_t numFrames;
  size_t frameDuration;
  size_t time;
  Sprite[AlienFrame.NUM_FRAMES] frames;
}

enum AlienType : ubyte
{
  ALIEN_DEAD   = 0,
  ALIEN_TYPE_A = 1,
  ALIEN_TYPE_B = 2,
  ALIEN_TYPE_C = 3
};

enum AlienFrame
{
  ALIEN_TYPE_A_0 = 0,
  ALIEN_TYPE_A_1 = 1,

  ALIEN_TYPE_B_0 = 2,
  ALIEN_TYPE_B_1 = 3,
  
  ALIEN_TYPE_C_0 = 4,
  ALIEN_TYPE_C_1 = 5,

  ALIEN_DEATH = 6,
  NUM_FRAMES = 7
}

Sprite[AlienFrame.NUM_FRAMES] createAlienSprite()
{
  Sprite[AlienFrame.NUM_FRAMES] alien;

  // Type A
  alien[AlienFrame.ALIEN_TYPE_A_0].width = 8;
  alien[AlienFrame.ALIEN_TYPE_A_0].height = 8;
  alien[AlienFrame.ALIEN_TYPE_A_0].data =
  [
    0,0,0,1,1,0,0,0, // ...@@...
    0,0,1,1,1,1,0,0, // ..@@@@..
    0,1,1,1,1,1,1,0, // .@@@@@@.
    1,1,0,1,1,0,1,1, // @@.@@.@@
    1,1,1,1,1,1,1,1, // @@@@@@@@
    0,1,0,1,1,0,1,0, // .@.@@.@.
    1,0,0,0,0,0,0,1, // @......@
    0,1,0,0,0,0,1,0  // .@....@.
  ];

  alien[AlienFrame.ALIEN_TYPE_A_1].width = 8;
  alien[AlienFrame.ALIEN_TYPE_A_1].height = 8;
  alien[AlienFrame.ALIEN_TYPE_A_1].data =
  [
    0,0,0,1,1,0,0,0, // ...@@...
    0,0,1,1,1,1,0,0, // ..@@@@..
    0,1,1,1,1,1,1,0, // .@@@@@@.
    1,1,0,1,1,0,1,1, // @@.@@.@@
    1,1,1,1,1,1,1,1, // @@@@@@@@
    0,0,1,0,0,1,0,0, // ..@..@..
    0,1,0,1,1,0,1,0, // .@.@@.@.
    1,0,1,0,0,1,0,1  // @.@..@.@
  ];

  // Type B
  alien[AlienFrame.ALIEN_TYPE_B_0].width = 11;
  alien[AlienFrame.ALIEN_TYPE_B_0].height = 8;
  alien[AlienFrame.ALIEN_TYPE_B_0].data = 
  [
    0,0,1,0,0,0,0,0,1,0,0, // ..@.....@..
    0,0,0,1,0,0,0,1,0,0,0, // ...@...@...
    0,0,1,1,1,1,1,1,1,0,0, // ..@@@@@@@..
    0,1,1,0,1,1,1,0,1,1,0, // .@@.@@@.@@.
    1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@
    1,0,1,1,1,1,1,1,1,0,1, // @.@@@@@@@.@
    1,0,1,0,0,0,0,0,1,0,1, // @.@.....@.@
    0,0,0,1,1,0,1,1,0,0,0  // ...@@.@@...
  ];

  alien[AlienFrame.ALIEN_TYPE_B_1].width = 11;
  alien[AlienFrame.ALIEN_TYPE_B_1].height = 8;
  alien[AlienFrame.ALIEN_TYPE_B_1].data = 
  [
    0,0,1,0,0,0,0,0,1,0,0, // ..@.....@..
    1,0,0,1,0,0,0,1,0,0,1, // @..@...@..@
    1,0,1,1,1,1,1,1,1,0,1, // @.@@@@@@@.@
    1,1,1,0,1,1,1,0,1,1,1, // @@@.@@@.@@@
    1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@
    0,1,1,1,1,1,1,1,1,1,0, // .@@@@@@@@@.
    0,0,1,0,0,0,0,0,1,0,0, // ..@.....@..
    0,1,0,0,0,0,0,0,0,1,0  // .@.......@.
  ];

  // Type C
  alien[AlienFrame.ALIEN_TYPE_C_0].width = 12;
  alien[AlienFrame.ALIEN_TYPE_C_0].height = 8;
  alien[AlienFrame.ALIEN_TYPE_C_0].data =
  [
    0,0,0,0,1,1,1,1,0,0,0,0, // ....@@@@....
    0,1,1,1,1,1,1,1,1,1,1,0, // .@@@@@@@@@@.
    1,1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@@
    1,1,1,0,0,1,1,0,0,1,1,1, // @@@..@@..@@@
    1,1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@@
    0,0,0,1,1,0,0,1,1,0,0,0, // ...@@..@@...
    0,0,1,1,0,1,1,0,1,1,0,0, // ..@@.@@.@@..
    1,1,0,0,0,0,0,0,0,0,1,1  // @@........@@
  ];


  alien[AlienFrame.ALIEN_TYPE_C_1].width = 12;
  alien[AlienFrame.ALIEN_TYPE_C_1].height = 8;
  alien[AlienFrame.ALIEN_TYPE_C_1].data =
  [
    0,0,0,0,1,1,1,1,0,0,0,0, // ....@@@@....
    0,1,1,1,1,1,1,1,1,1,1,0, // .@@@@@@@@@@.
    1,1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@@
    1,1,1,0,0,1,1,0,0,1,1,1, // @@@..@@..@@@
    1,1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@@
    0,0,1,1,1,0,0,1,1,1,0,0, // ..@@@..@@@..
    0,1,1,0,0,1,1,0,0,1,1,0, // .@@..@@..@@.
    0,0,1,1,0,0,0,0,1,1,0,0  // ..@@....@@..
  ];

  // Death sprite
  alien[AlienFrame.ALIEN_DEATH].width = 13;
  alien[AlienFrame.ALIEN_DEATH].height = 7;
  alien[AlienFrame.ALIEN_DEATH].data =
  [
    0,1,0,0,1,0,0,0,1,0,0,1,0, // .@..@...@..@.
    0,0,1,0,0,1,0,1,0,0,1,0,0, // ..@..@.@..@..
    0,0,0,1,0,0,0,0,0,1,0,0,0, // ...@.....@...
    1,1,0,0,0,0,0,0,0,0,0,1,1, // @@.........@@
    0,0,0,1,0,0,0,0,0,1,0,0,0, // ...@.....@...
    0,0,1,0,0,1,0,1,0,0,1,0,0, // ..@..@.@..@..
    0,1,0,0,1,0,0,0,1,0,0,1,0  // .@..@...@..@.
  ];

  return alien;
}

Sprite createPlayerSprite()
{
  Sprite player;
  player.width = 11;
  player.height = 7;
  player.data =
  [
    0,0,0,0,0,1,0,0,0,0,0, // .....@.....
    0,0,0,0,1,1,1,0,0,0,0, // ....@@@....
    0,0,0,0,1,1,1,0,0,0,0, // ....@@@....
    0,1,1,1,1,1,1,1,1,1,0, // .@@@@@@@@@.
    1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@
    1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@
    1,1,1,1,1,1,1,1,1,1,1, // @@@@@@@@@@@
  ];
  return player;
}

Sprite createBulletSprite()
{
  Sprite bullet;
  bullet.width = 1;
  bullet.height = 3;
  bullet.data =
  [
    1, // @
    1, // @
    1  // @
  ];
  return bullet;
}

Sprite createTextSprite()
{
  Sprite spritesheet;
  spritesheet.width = 5;
  spritesheet.height = 7;
  spritesheet.data =
  [
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,
    0,1,0,1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,1,0,1,0,0,1,0,1,0,1,1,1,1,1,0,1,0,1,0,1,1,1,1,1,0,1,0,1,0,0,1,0,1,0,
    0,0,1,0,0,0,1,1,1,0,1,0,1,0,0,0,1,1,1,0,0,0,1,0,1,0,1,1,1,0,0,0,1,0,0,
    1,1,0,1,0,1,1,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,1,0,1,1,0,1,0,1,1,
    0,1,1,0,0,1,0,0,1,0,1,0,0,1,0,0,1,1,0,0,1,0,0,1,0,1,0,0,0,1,0,1,1,1,1,
    0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,
    1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,
    0,0,1,0,0,1,0,1,0,1,0,1,1,1,0,0,0,1,0,0,0,1,1,1,0,1,0,1,0,1,0,0,1,0,0,
    0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,1,1,1,1,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,
    0,0,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,1,0,0,0,

    0,1,1,1,0,1,0,0,0,1,1,0,0,1,1,1,0,1,0,1,1,1,0,0,1,1,0,0,0,1,0,1,1,1,0,
    0,0,1,0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,1,1,1,0,
    0,1,1,1,0,1,0,0,0,1,0,0,0,0,1,0,0,1,1,0,0,1,0,0,0,1,0,0,0,0,1,1,1,1,1,
    1,1,1,1,1,0,0,0,0,1,0,0,0,1,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    0,0,0,1,0,0,0,1,1,0,0,1,0,1,0,1,0,0,1,0,1,1,1,1,1,0,0,0,1,0,0,0,0,1,0,
    1,1,1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0,0,1,0,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,0,1,1,1,1,0,1,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    1,1,1,1,1,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,0,1,1,1,1,0,0,0,0,1,1,0,0,0,1,0,1,1,1,0,

    0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,
    0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,
    0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,
    1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,
    0,1,1,1,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,
    0,1,1,1,0,1,0,0,0,1,1,0,1,0,1,1,1,0,1,1,1,0,1,0,0,1,0,0,0,1,0,1,1,1,0,

    0,0,1,0,0,0,1,0,1,0,1,0,0,0,1,1,0,0,0,1,1,1,1,1,1,1,0,0,0,1,1,0,0,0,1,
    1,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,1,1,1,0,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,1,0,1,1,1,0,
    1,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,1,1,1,0,
    1,1,1,1,1,1,0,0,0,0,1,0,0,0,0,1,1,1,1,0,1,0,0,0,0,1,0,0,0,0,1,1,1,1,1,
    1,1,1,1,1,1,0,0,0,0,1,0,0,0,0,1,1,1,1,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,0,1,0,1,1,1,1,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,1,1,1,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
    0,1,1,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,1,1,1,0,
    0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    1,0,0,0,1,1,0,0,1,0,1,0,1,0,0,1,1,0,0,0,1,0,1,0,0,1,0,0,1,0,1,0,0,0,1,
    1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,1,1,1,1,
    1,0,0,0,1,1,1,0,1,1,1,0,1,0,1,1,0,1,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
    1,0,0,0,1,1,0,0,0,1,1,1,0,0,1,1,0,1,0,1,1,0,0,1,1,1,0,0,0,1,1,0,0,0,1,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    1,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,1,1,1,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,1,0,1,1,0,0,1,1,0,1,1,1,1,
    1,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,1,1,1,0,1,0,1,0,0,1,0,0,1,0,1,0,0,0,1,
    0,1,1,1,0,1,0,0,0,1,1,0,0,0,0,0,1,1,1,0,1,0,0,0,1,0,0,0,0,1,0,1,1,1,0,
    1,1,1,1,1,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,
    1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,0,1,1,1,0,
    1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,0,1,0,1,0,0,0,1,0,0,
    1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,1,0,1,1,0,1,0,1,1,1,0,1,1,1,0,0,0,1,
    1,0,0,0,1,1,0,0,0,1,0,1,0,1,0,0,0,1,0,0,0,1,0,1,0,1,0,0,0,1,1,0,0,0,1,
    1,0,0,0,1,1,0,0,0,1,0,1,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,
    1,1,1,1,1,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,1,1,1,1,1,

    0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,1,1,
    0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0,
    1,1,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,1,1,0,0,0,
    0,0,1,0,0,0,1,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,
    0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  ];
  return spritesheet;
}

Sprite createNumberSprite()
{
  Sprite spritesheet = createTextSprite();
  const size_t offset = 16 * 35;
  spritesheet.data = spritesheet.data[offset..spritesheet.data.length];
  return spritesheet;
}

AlienAnimation createAlienAnimation()
{
  AlienAnimation alienAnim;

  alienAnim.loop = true;
  alienAnim.numFrames = 2;
  alienAnim.frameDuration = 10;
  alienAnim.time = 0;

  alienAnim.frames = createAlienSprite();
  return alienAnim;
}

bool overlapCheck(
  const ref Sprite spriteA, size_t xA, size_t yA,
  const ref Sprite spriteB, size_t xB, size_t yB)
{
  if (xA < xB + spriteB.width && xA + spriteA.width > xB &&
      yA < yB + spriteB.height && yA + spriteA.height > yB)
    return true;
  return false;
}

void loopAnim(ref AlienAnimation anim)
{
  ++anim.time;
  if (anim.time == anim.numFrames * anim.frameDuration)
  {
      if (anim.loop) 
        anim.time = 0;
      else
      {
        //TODO: Remove anim
      }
  }
}