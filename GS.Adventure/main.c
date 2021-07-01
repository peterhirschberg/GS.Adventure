/*
 * main.c
 * GS.Asteroids
 *
 * Created by Peter Hirschberg on 5/14/21.
 * Copyright (c) 2021 Peter Hirschberg. All rights reserved.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#include <gsos.h>
#include <Memory.h>
#include <Locator.h>
#include <MiscTool.h>
#include <Resources.h>
#include <Sound.h>
#include <QuickDraw.h>

#include "main.h"

unsigned int userid;
clock_t lastTick;
unsigned int randomSeed;

word* backgroundLayer;


boolean shouldQuit;

void signalQuit(void)
{
    shouldQuit = true;
}


word getRandom(word range)
{
    return rand() % range;
}

word numLoosePixelsFromLeftToRight(word start)
{
    return 8 - (start % 8);
}

word numLoosePixelsFromRightToLeft(word start)
{
    return start % 8;
}


// Sounds

static void loadSound(Word addr, Word soundNum)
{
//    Handle handle = LoadResource(rRawSound, soundNum);
//    HLock(handle);
//    WriteRamBlock(*handle, addr, GetHandleSize(handle));
//    HUnlock(handle);
}

void loadFireSound(word addr)
{
//    loadSound(addr, FIRE_SOUND);
}

void preloadSound(void)
{
//    LoadResource(rRawSound, FIRE_SOUND);
}

// Game loop
void waitForNextTick(void)
{
    while (!shouldQuit) {
        clock_t t;
        runGameTick();
        do {
            t = clock();
        }
        while ((t - lastTick) < 1);
        lastTick = t;
    }
}

int main(void)
{
    int event;
    Ref toolStartupRef;
    
    userid = MMStartUp();
    TLStartUp();
    toolStartupRef = StartUpTools(userid, refIsResource, TOOL_STARTUP);
    CompactMem();
//    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0x012000);
    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0x0e0000);
    InitMouse(0);
    SetMouse(transparent);
    
    randomSeed = (int)time(NULL);
    if (randomSeed == 0)
        randomSeed = 1;
    srand(randomSeed);
 
    initGame();
  
    runGameTick();

    lastTick = clock();
    waitForNextTick();
    
    ShutDownTools(refIsHandle, toolStartupRef);
    TLShutDown();
    MMShutDown(userid);
    
    return 0;
}
