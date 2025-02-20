<?php

namespace App;

enum DeliveryProvider: string
{
    case DHL = 'DHL';
    case STARTRACK = 'STARTRACK';
    case ZOOM2U = 'ZOOM2U';
    case TGE = 'TGE';
}
