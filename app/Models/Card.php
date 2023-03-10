<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Card extends Model
{
    protected $guarded = [];


    public function cardDetails()
    {
        return $this->hasMany(CardDetails::class);
    }
}
