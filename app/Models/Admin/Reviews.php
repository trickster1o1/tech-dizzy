<?php

namespace App\Models\admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;

class Reviews extends Model
{
    use HasFactory, Sortable;

    protected $table = 'reviews';

    protected $fillable = ['name', 'email', 'review', 'status', 'review_category', 'review_rating', 'review_for'];

    public $sortable = ['name', 'status', 'email', 'review_category', 'review_rating'];
}
