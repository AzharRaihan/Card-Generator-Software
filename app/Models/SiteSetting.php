<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SiteSetting extends Model
{
    use SoftDeletes;

    /**
     * Define table name
     * @var string
     */
    protected $table = "tbl_site_settings";
    protected $fillable = ['title'];
}
