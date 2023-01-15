<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CardBackground extends Model
{
    protected $guarded = [];


    public function cardDesign()
    {
        return $this->hasMany(CardDesign::class);
    }
}
