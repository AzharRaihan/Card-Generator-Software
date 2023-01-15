<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CardDetails extends Model
{
    protected $guarded = [];


    public function card()
    {
        return $this->belongsTo(Card::class);
    }
}
