<?php

namespace Database\Factories;

use App\Models\Room;
use Illuminate\Database\Eloquent\Factories\Factory;

class RoomFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Room::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'              => $this->faker->name(),
            'price'             => $this->faker->randomFloat(2, 1000, 10000),
            'size'              => $this->faker->name,
            'maximum_occupancy' => $this->faker->randomNumber(1),
            'description'       => $this->faker->paragraph(2),
            'image'             => "{$this->faker->randomElement([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])}.png",
            'uuid'              => $this->faker->uuid(),
        ];
    }
}
