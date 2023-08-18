<?php

namespace App\Http\Requests\admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateBannerRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return auth()->check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'title' => 'required',
            'banner_type' => 'nullable',
            'image' => 'required',
            'video' => 'nullable',
            'tag_line' => 'nullable',
            'primary_button_title' => 'nullable',
            'primary_button_link' => 'nullable',
            'secondary_button_link' => 'nullable',
            'secondary_button_title' => 'nullable',
            'status' => 'nullable'
        ];
    }
}
