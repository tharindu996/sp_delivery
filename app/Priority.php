<?php

namespace App;

enum Priority: string
{
    case Standard = 'Standard';
    case Express = 'Express';
    case Immediate = 'Immediate';
}
