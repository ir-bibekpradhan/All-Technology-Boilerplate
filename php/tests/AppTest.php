<?php

declare(strict_types=1);

namespace Tests;

use App\App;
use PHPUnit\Framework\TestCase;

class AppTest extends TestCase
{
    private App $app;

    protected function setUp(): void
    {
        $this->app = new App();
    }

    public function testGreetWithName(): void
    {
        $this->assertEquals('Hello, John!', $this->app->greet('John'));
    }

    public function testGreetWithoutName(): void
    {
        $this->assertEquals('Hello, World!', $this->app->greet());
    }

    public function testGetHealth(): void
    {
        $health = $this->app->getHealth();
        $this->assertEquals('healthy', $health['status']);
        $this->assertArrayHasKey('timestamp', $health);
    }
}
