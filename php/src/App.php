<?php

declare(strict_types=1);

namespace App;

class App
{
    public function greet(string $name = 'World'): string
    {
        return "Hello, {$name}!";
    }

    public function getHealth(): array
    {
        return [
            'status' => 'healthy',
            'timestamp' => date('c'),
        ];
    }
}
