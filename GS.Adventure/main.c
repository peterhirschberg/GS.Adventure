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


word getRandom(word range)
{
    return rand() % range;
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

int main(void)
{
    int event;
    Ref toolStartupRef;
    
    userid = MMStartUp();
    TLStartUp();
    toolStartupRef = StartUpTools(userid, refIsResource, TOOL_STARTUP);
    CompactMem();
    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0xc0000);
    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0xa0000);
    NewHandle((LongWord)0x8000, userid, (Word)(attrLocked | attrFixed | attrAddr | attrBank), (Pointer)0xb0000);
    InitMouse(0);
    SetMouse(transparent);
    
    randomSeed = (int)time(NULL);
    if (randomSeed == 0)
        randomSeed = 1;
    srand(randomSeed);
    
    while (!shouldQuit) {
        runGameTick();
    }
    
    ShutDownTools(refIsHandle, toolStartupRef);
    TLShutDown();
    MMShutDown(userid);
    
    return 0;
}
