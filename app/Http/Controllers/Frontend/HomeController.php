<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Admin\Album;
use App\Models\Admin\Banner;
use App\Models\Admin\Blog;
use App\Models\Admin\CounterInformation;
use App\Models\Admin\HomeSetting;
use App\Models\Admin\Page;
use App\Models\Admin\Program;
use App\Models\Admin\Service;
use App\Models\Admin\Supporter;
use App\Models\Admin\Testimonials;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    

    public function thematicView() {
        // return view('Frontend.page.thematic', ['siteSetting'=>$this->data['siteSetting']]);
        $this->data['thematics'] = \App\Models\Admin\Category::where('status','active')->where('category_type','program')->orderBy('order_by','ASC')->get();
        return view('Frontend.page.thematic', $this->data);

    }
    public function index() {

        $this->siteStatus();
        
        $this->data['is_home']      = true;
        $this->data['homeSetting']  = HomeSetting::first();
        $this->data['blogs']        = Blog::select('blogs.*',\DB::raw("(SELECT count(*) from blogs_comments where blog_id = blogs.id AND status='active' ) as total_comment"))->where('status','active')->where(strtolower('is_featured'),'yes')->orderBy('order_by','ASC')->take(3)->get();
        $this->data['banners']      = Banner::where('status','active')->orderBy('order_by','ASC')->get();
        $this->data['services']     = Service::where('status','active')->where(strtolower('is_featured'),'yes')->orderBy('order_by','ASC')->get();
        $this->data['programs']     = Program::where('status','active')->where(strtolower('is_featured'),'yes')->orderBy('order_by','ASC')->get();
        $this->data['testimonials'] = Testimonials::where('status','active')->orderBy('id','ASC')->get();
                
        $this->data['supporters']   = Supporter::where('status','active')->orderBy('order_by','ASC')->get();
        $this->data['counter']      = CounterInformation::where('status','active')->orderBy('order_by','ASC')->get();
        $this->data['content']      = null;
       
        $tabs = [];
        //$additional_prog = [];
        $this->data['album'] = [];

        if($this->data['homeSetting'])
        {
            if($this->data['homeSetting']->content) {
                $this->data['content'] = Page::where('status','active')->where('id',$this->data['homeSetting']->content)->first();
            }
            if($this->data['homeSetting']->tabA_content) {
                $tab = Page::where('id',$this->data['homeSetting']->tabA_content)->first();
                array_push($tabs,$tab);
            }
            if($this->data['homeSetting']->tabB_content) {
                $tab = Page::where('id', $this->data['homeSetting']->tabB_content)->first();
                array_push($tabs,$tab);
                
            }if($this->data['homeSetting']->tabC_content) {
                $tab = Page::where('id', $this->data['homeSetting']->tabC_content)->first();
                array_push($tabs,$tab);
                
            }

            if($this->data['homeSetting']->additional_programs) {
                $prog = explode(',',$this->data['homeSetting']->additional_programs);
                if(is_array($prog) && count($prog) > 0){
                    $additional_prog = Program::whereIn('id',$prog)->where('status','active')->get();
                    $this->data['additional_prog'] = $additional_prog;
                   // array_push($additional_prog, $program);
                }
                
            }

            if($this->data['homeSetting']->album_content){
                $album_ids = explode(',',$this->data['homeSetting']->album_content);
                if(count($album_ids) > 0){
                    $this->data['album']        = Album::where('status','active')->orderBy('order_by','ASC')->whereIn('id',$album_ids)->get();
                }
            }
            
        }

        $this->data['tabs'] = $tabs;
        
        $meta = get_meta_detail($this->data['siteSetting']);
        return view('Frontend.home.main.index', $this->data+$meta);
    }

    

}
