<?php

namespace App\Models;

use Laravel\Sanctum\PersonalAccessToken;

class Token extends PersonalAccessToken
{
    public function isExpired(): bool
    {
        return $this->expires_at && $this->expires_at->lessThanOrEqualTo(now());
    }
}
