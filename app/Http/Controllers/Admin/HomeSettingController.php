<?php

namespace App\Http\Controllers\Admin;

// use App\Http\Controllers\Controller;

use App\Models\Admin\Album;
use App\Models\Admin\Blog;
use Illuminate\Http\Request;
use App\Models\Admin\HomeSetting;
use App\Models\Admin\Page;
use App\Models\Admin\Program;
use App\Models\Admin\Service;
use App\Models\Admin\Testimonials;

class HomeSettingController extends Controller
{
    public $menuCode = 'HOMESETTING';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(authorize($this->menuCode, 'CREATE',false) || authorize($this->menuCode, 'UPDATE',false)){   
            $homeS = HomeSetting::first();
            if($homeS) {
                return redirect()->route('homesetting.edit','hit');    
                
            } else {
                return redirect()->route('homesetting.create');
                
            }
        }else{
            abort_if(true, 403); 
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        if(authorize($this->menuCode, 'CREATE',false) || authorize($this->menuCode, 'UPDATE',false)){  
            $homesetting = HomeSetting::first();
            if($homesetting) {
                return redirect()->route('homesetting.edit','hit');
            }
            // $services = Service::get(['id','title']);
            $programs = Program::where('status','!=','deleted')->get(['id','title']);
            // $testimonial = Testimonials::get(['id','title']);
            $album = Album::get(['id','title']);
            // $blog = Blog::get(['id','title']);
            $page = Page::where('status','active')->get(['id','title as name']);
            
            return view('Admin.homesetting.create',
             compact('album','page','programs')+['menucode'=>$this->menuCode]);
        }else{
            abort_if(true,403);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $hh = HomeSetting::updateSetting($request->input());
        $this->modified_by('create',$hh);

        return redirect()->route('homesetting.edit','hit');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        abort_if(true,403);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(authorize($this->menuCode, 'CREATE',false) || authorize($this->menuCode, 'UPDATE',false)){  
            $homesetting = HomeSetting::first();
            if(!$homesetting) {
                return redirect()->route('homesetting.create');
            }
            // $services = Service::get(['id','title']);
            $programs = Program::where('status','!=','deleted')->get(['id','title']);
            // $testimonial = Testimonials::get(['id','title']);
            $album = Album::get(['id','title']);
            // $blog = Blog::get(['id','title']);
            $page = Page::where('status','active')->get(['id','title as name']);
            
            return view('Admin.homesetting.edit', 
                compact('homesetting', 'album','page','programs')+['menucode'=>$this->menuCode]
            );
        }else{
            abort_if(true,403);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $hh = HomeSetting::editSetting($request->input(), $id);
        $this->modified_by('update',$hh);
        
        return redirect()->route('homesetting.edit','hit');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       abort_if(true,403);
    }
}
