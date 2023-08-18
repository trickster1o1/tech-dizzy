<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomeSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'service_title','service_sub_title','service_short_description','service_content',
        'donner_title','donner_sub_title','donner_short_description','donner_content',
        'testimonial_title','testimonial_sub_title','testimonial_content',
        'album_title','album_sub_title','album_short_description','album_button_title','album_button_url','album_content',
        'final_icon','final_title','final_short_description','final_url_link','final_url_title','final_banner',
        'final_icon_2','final_title_2','final_short_description_2','final_url_link_2','final_url_title_2',
        'blog_title','blog_sub_title','blog_content',
        'tabA_content','tabB_content','tabC_content',
        'additional_programs','content','created_by','updated_by',
    ];

    public static function updateSetting($req) {
        $hh = HomeSetting::create(['service_title'=>$req['service_title'],
        'service_sub_title'=>$req['service_sub_title'],
        'service_short_description'=>$req['service_short_description'],
        'service_content'=> isset($req['service_content'])?implode(',',$req['service_content']):'',
        'donner_title'=>$req['donner_title'],
        'donner_sub_title'=>$req['donner_sub_title'],
        'donner_short_description'=>$req['donner_short_description'],
        'donner_content'=>isset($req['donner_content'])?implode(',',$req['donner_content']):'',
        'testimonial_title'=>$req['testimonial_title'],
        'testimonial_sub_title'=>$req['testimonial_sub_title'],
        'testimonial_content'=>isset($req['testimonial_content'])?implode(',',$req['testimonial_content']):'',
        'album_title'=>$req['album_title'],
        'album_sub_title'=>$req['album_sub_title'],
        'album_short_description'=>$req['album_short_description'],
        'album_button_title'=>$req['album_button_title'],
        'album_button_url'=>$req['album_button_url'],
        'album_content'=>isset($req['album_content'])?implode(',',$req['album_content']):'',
        'final_icon'=>$req['final_icon'],
        'final_title'=>$req['final_title'],
        'final_short_description'=>$req['final_short_description'],
        'final_url_link'=>$req['final_url_link'],
        'final_url_title'=>$req['final_url_title'],
        'final_icon_2'=>$req['final_icon_2'],
        'final_title_2'=>$req['final_title_2'],
        'final_short_description_2'=>$req['final_short_description_2'],
        'final_url_link_2'=>$req['final_url_link_2'],
        'final_url_title_2'=>$req['final_url_title_2'],
        'final_banner'=>(isset($req['final_banner']))?$req['final_banner']:'',
        'blog_title'=>$req['blog_title'],
        'blog_sub_title'=>$req['blog_sub_title'],
        'blog_content'=>isset($req['blog_content'])?implode(',',$req['blog_content']):'',
        'tabA_content'=>$req['tabA_content'],
        'tabB_content'=>$req['tabB_content'],
        'tabC_content'=>$req['tabC_content'],
        'additional_programs'=>isset($req['additional_programs'])?implode(',',$req['additional_programs']):'',
        'content'=>(isset($req['content']))?$req['content']:'']);
        
        return $hh;
    }


    public static function editSetting($req, $id) {
        $hh = HomeSetting::where('id',$id)->first();
        $hh->update(['service_title'=>$req['service_title'],
        'service_sub_title'=>$req['service_sub_title'],
        'service_short_description'=>$req['service_short_description'],
        'service_content'=> isset($req['service_content'])?implode(',',$req['service_content']):'',
        'donner_title'=>$req['donner_title'],
        'donner_sub_title'=>$req['donner_sub_title'],
        'donner_short_description'=>$req['donner_short_description'],
        'donner_content'=>isset($req['donner_content'])?implode(',',$req['donner_content']):'',
        'testimonial_title'=>$req['testimonial_title'],
        'testimonial_sub_title'=>$req['testimonial_sub_title'],
        'testimonial_content'=>isset($req['testimonial_content'])?implode(',',$req['testimonial_content']):'',
        'album_title'=>$req['album_title'],
        'album_sub_title'=>$req['album_sub_title'],
        'album_short_description'=>$req['album_short_description'],
        'album_button_title'=>$req['album_button_title'],
        'album_button_url'=>$req['album_button_url'],
        'album_content'=>isset($req['album_content'])?implode(',',$req['album_content']):'',
        'final_icon'=>$req['final_icon'],
        'final_title'=>$req['final_title'],
        'final_short_description'=>$req['final_short_description'],
        'final_url_link'=>$req['final_url_link'],
        'final_url_title'=>$req['final_url_title'],
        'final_icon_2'=>$req['final_icon_2'],
        'final_title_2'=>$req['final_title_2'],
        'final_short_description_2'=>$req['final_short_description_2'],
        'final_url_link_2'=>$req['final_url_link_2'],
        'final_url_title_2'=>$req['final_url_title_2'],
        'final_banner'=>(isset($req['final_banner']))?$req['final_banner']:'',
        'blog_title'=>$req['blog_title'],
        'blog_sub_title'=>$req['blog_sub_title'],
        'blog_content'=>isset($req['blog_content'])?implode(',',$req['blog_content']):'',
        'tabA_content'=>$req['tabA_content'],
        'tabB_content'=>$req['tabB_content'],
        'tabC_content'=>$req['tabC_content'],
        'additional_programs'=>isset($req['additional_programs'])?implode(',',$req['additional_programs']):'',
        'content'=>(isset($req['content']))?$req['content']:'']);

        return $hh;
    }
    
}
