#include "Game.h"
#include "raylib.h"

Game::Game() {}

int Game::mainLoop() {
  const int screenWidth = 800;
  const int screenHeight = 450;

  InitWindow(screenWidth, screenHeight, "raylib [core] example");

  SetTargetFPS(60);

  while (!WindowShouldClose()) {

    BeginDrawing();
    ClearBackground(RAYWHITE);
    DrawText("Congrats! You created your first window!", 190, 200, 20,
             LIGHTGRAY);
    EndDrawing();
  }

  CloseWindow();

  return 0;
}
