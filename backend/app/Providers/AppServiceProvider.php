<?php

namespace App\Providers;

use App\Models\Token;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\ServiceProvider;
use Laravel\Sanctum\Sanctum;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Model::unguard();

        // Force HTTPS scheme
        if (!app()->environment('local')) {
            URL::forceScheme('https');
        }

        // Override default Sanctum token model
        Sanctum::usePersonalAccessTokenModel(Token::class);
    }
}
