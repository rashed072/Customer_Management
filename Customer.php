<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Customer extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table="customers";
    protected $primarykey="customer_id";

    public function setUserNameAttribute($value){
        $this->attributes['user_name']=ucwords($value);
    }
    public function getDobAttribute($data){
        return date("d-M-Y",strtotime($data));
    }
}
