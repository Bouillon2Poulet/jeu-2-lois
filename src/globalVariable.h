#pragma once

#include <utility>

unsigned int MAPnbCases()
{
    return 78;
}

struct Turn {
    static bool _endOfTurn;
};

bool Turn::_endOfTurn = false;

struct Win {
    static std::pair<bool, int> _hasWin;
};

std::pair<bool, int> Win::_hasWin = {false, -1};