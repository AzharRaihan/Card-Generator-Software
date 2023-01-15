<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Log;
use Exception;
use Twilio\Rest\Client;

class User extends Authenticatable
{
    use Notifiable, SoftDeletes;

    /**
     * Define table name
     * @var string
     */
    protected $table = "tbl_users";
    /**
     * Define fillable field
     * @var string
     */
    protected $fillable = ['name', 'email', 'password'];
    /**
     * Define hidden field
     * @var string
     */
    protected $hidden = ['password', 'remember_token',];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Define guard for table
     * @var string
     */
    protected $appends = ['full_name'];

    /**
    *  Append full name
    * @return string
    */
    public function getFullNameAttribute(): string
    {
        return $this->first_name. '  '.$this->last_name;
    }
}
