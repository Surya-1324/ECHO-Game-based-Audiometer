// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:mario_game/game/background.dart';
import 'package:mario_game/game/managers/game_manager.dart';
import 'package:mario_game/game/managers/object_manager.dart';
import 'package:mario_game/game/myvariables.dart';
import 'package:mario_game/game/sprites/competitor.dart';
import 'package:mario_game/game/sprites/player.dart';

enum Character {
  bmw,
  farari,
  lambo,
  tarzen,
  tata,
  tesla,
}

class CarRace extends FlameGame
    with HasKeyboardHandlerComponents, HasCollisionDetection {
  CarRace({
    super.children,
  });

  final BackGround _backGround = BackGround();
  final GameManager gameManager = GameManager();
  ObjectManager objectManager = ObjectManager();
  int screenBufferSpace = 300;

  var leftrightlist=[];
  var leftrightdatelist=[];


  EnemyPlatform platFrom = EnemyPlatform();

  late Player player;

  bool musicstate=false;

  late AudioPool pool;

  final soundplayer = AudioPlayer();
  late Timer mytimer;
  @override
  FutureOr<void> onLoad() async {
    await add(_backGround);
    await add(gameManager);
    overlays.add('gameOverlay');
    pool = await FlameAudio.createPool(
      'audi_sound.mp3',
      minPlayers: 3,
      maxPlayers: 4,
    );
  }


  Future<void> playMusic(vol,val)
  async {

      // FlameAudio.play('audi_sound.mp3',volume: -vol);
      // FlameAudio.bgm.play('audi_sound.mp3', volume: vol);

    await soundplayer.setVolume(vol);
    await soundplayer.setBalance(val);
     await soundplayer.play(AssetSource('audio/audi_sound.mp3'));


  }

  void startBgmMusic(ran,val) {

    playMusic(ran,val);

  }

  @override
  void update(double dt) {
    super.update(dt);
    if (gameManager.isGameOver) {
      return;
    }
    if (gameManager.isIntro) {
      overlays.add('mainMenuOverlay');
      return;
    }
    if (gameManager.isPlaying) {
      final Rect worldBounds = Rect.fromLTRB(
        0,
        camera.position.y - screenBufferSpace,
        camera.gameSize.x,
        camera.position.y + _backGround.size.y,
      );
      camera.worldBounds = worldBounds;
    }


  }

  @override
  Color backgroundColor() {
    return const Color.fromARGB(255, 241, 247, 249);
  }

  void setCharacter() {
    player = Player(
      character: gameManager.character,
      moveLeftRightSpeed: 600,
    );
    add(player);
  }

  void initializeGameStart() {
    setCharacter();

    gameManager.reset();

    if (children.contains(objectManager)) objectManager.removeFromParent();

    player.reset();
    camera.worldBounds = Rect.fromLTRB(
      0,
      -_backGround
          .size.y, // top of screen is 0, so negative is already off screen
      camera.gameSize.x,
      _backGround.size.y +
          screenBufferSpace, // makes sure bottom bound of game is below bottom of screen
    );
    camera.followComponent(player);

    player.resetPosition();

    objectManager = ObjectManager();

    add(objectManager);
   int count=0;
     mytimer = Timer.periodic(Duration(seconds: 3), (timer) {
if(count==5)
  onLose();
      musicstate=!musicstate;
      if(musicstate)
        {

          mystorage.isplaying=true;

          double randomdouble = Random().nextDouble();
          print(randomdouble);
mystorage.soundlist.add(randomdouble);
            final random = Random();

            double val=random.nextBool() ? 1.0 : -1.0;
            mystorage.leftrightlist.add(val);
            mystorage.leftrightdtlist.add(DateTime.now());
            startBgmMusic(randomdouble,val);
        }
      else{


        mystorage.isplaying=false;
       soundplayer.stop();

      }

      count++;

    });
  }

  void addtofb() async
  {
    var a=DateTime.now().toString();
    DatabaseReference ref = await FirebaseDatabase.instance.ref("eartestdata/1234");
var arr=[];
for(int i=0;i<mystorage.leftrightlist.length;i++)
  {

    int a=mystorage.leftrightlist[i]==mystorage.movementlist[i]?1:0;
    arr.add(a);
  }
print(arr);

    var len=mystorage.leftrightlist.length-mystorage.movementlist.length;
    if(mystorage.leftrightlist.length>mystorage.movementlist.length)
    {

      for(int i=0;i<len;i++)
        mystorage.movementlist.add(0);

    }
    else
    {
      for(int i=0;i<(-len);i++)
        mystorage.leftrightlist.add(0);

    }

        await ref.update({
      "leftright": mystorage.leftrightlist.toString(),
      "leftrightdt": mystorage.leftrightdtlist.toString(),
      "movements": mystorage.movementlist.toString(),
      "movementsdt": mystorage.movementdtlist.toString(),
          "value":arr.toString(),
          "sound":mystorage.soundlist.toString()
    });

  }

  void onLose() {
    
    print(mystorage.leftrightdtlist);
    print(mystorage.leftrightlist);
    print(mystorage.movementlist);
    print(mystorage.movementdtlist);
    addtofb();
    gameManager.state = GameState.gameOver;
    player.removeFromParent();
    soundplayer.stop();
    mytimer.cancel();
    overlays.add('gameOverOverlay');
  }

  void togglePauseState() {
    if (paused) {
      resumeEngine();
      musicstate=false;

    } else {
      pauseEngine();

    }
  }

  void resetGame() {
    startGame();

    overlays.remove('gameOverOverlay');
  }

  void startGame() {
    initializeGameStart();
    gameManager.state = GameState.playing;
    overlays.remove('mainMenuOverlay');
  }
}
