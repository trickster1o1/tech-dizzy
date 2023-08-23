<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $table = 'projects';

    protected $fillable = ['title','tagline', 'slug', 'thumb_image', 'banner_image', 'is_featured', 'status', 'gallery_id', 'related_services', 'short_description', 'description', 'order_by', 'meta_key', 'meta_description', 'fb_title', 'fb_description', 'fb_image', 'twitter_title', 'twitter_description', 'twitter_image','link','featured_image',
        'created_by','updated_by',
    ];

    public static function getTotal($filter = [])
    {
        $query = Project::where('status', '!=', 'deleted');
        if (isset($filter['filter_search_text']) && strlen(trim($filter['filter_search_text']))) {
            $query->where('title', 'like', '%' . $filter['filter_search_text'] . '%');
        }
        $total_data = $query->count();
        return $total_data;
    }

    public static function getData($sort = [], $pagination = [], $filter = [])
    {
        $query = Project::select(['projects.*'])
            ->where('projects.status', '!=', 'deleted');
        //filter conditions begins
        if (isset($filter['filter_search_text']) && strlen(trim($filter['filter_search_text']))) {
            $query->where('projects.title', 'like', '%' . $filter['filter_search_text'] . '%');
        }
        //filter condition ends
        $projects = $query->orderby($sort['field'], $sort['position'])->offset($pagination['offset'])->limit($pagination['limit'])->get();
        return $projects;
    }
}
