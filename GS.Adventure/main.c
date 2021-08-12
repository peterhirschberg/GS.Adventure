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

#include <gsos.h>
#include <Memory.h>
#include <Locator.h>
#include <MiscTool.h>
#include <Resources.h>
#include <Sound.h>
#include <QuickDraw.h>

#include "main.h"

unsigned int userid;
unsigned int randomSeed;

word* backgroundLayer;


boolean shouldQuit;

void signalQuit(void)
{
    shouldQuit = true;
}


word getRandomRange(word lower, word upper)
{
    int range = upper - lower;
    return (rand() % range) + lower;
}


// Sounds

static void loadSound(Word addr, Word soundNum)
{
    Handle handle = LoadResource(rRawSound, soundNum);
    HLock(handle);
    WriteRamBlock(*handle, addr, GetHandleSize(handle));
    HUnlock(handle);
}

void loadWonSound(word addr)
{
    loadSound(addr, WON_SOUND);
}

void loadRoarSound(word addr)
{
    loadSound(addr, ROAR_SOUND);
}

void loadDragonDieSound(word addr)
{
    loadSound(addr, DRAGONDIE_SOUND);
}

void loadEatenSound(word addr)
{
    loadSound(addr, EATEN_SOUND);
}

void loadPickupSound(word addr)
{
    loadSound(addr, PICKUP_SOUND);
}

void loadPutdownSound(word addr)
{
    loadSound(addr, PUTDOWN_SOUND);
}

void preloadSound(void)
{
    LoadResource(rRawSound, WON_SOUND);
    LoadResource(rRawSound, ROAR_SOUND);
    LoadResource(rRawSound, DRAGONDIE_SOUND);
    LoadResource(rRawSound, EATEN_SOUND);
    LoadResource(rRawSound, PICKUP_SOUND);
    LoadResource(rRawSound, PUTDOWN_SOUND);
}

int main(void)
{
    int event;
    Ref toolStartupRef;
    
    userid = MMStartUp();
    TLStartUp();
    toolStartupRef = StartUpTools(userid, refIsResource, TOOL_STARTUP);
    CompactMem();
    
    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0x1c0000);
    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0x1a0000);
    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0x1b0000);
    InitMouse(0);
    SetMouse(transparent);
    
    randomSeed = (int)time(NULL);
    if (randomSeed == 0)
        randomSeed = 1;
    srand(randomSeed);
    
    saveState();
    
    while (!shouldQuit) {
        runGameTick();
    }
    
    restoreState();
    
    ShutDownTools(refIsHandle, toolStartupRef);
    TLShutDown();
    MMShutDown(userid);
    
    return 0;
}
