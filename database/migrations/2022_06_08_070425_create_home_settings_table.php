<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home_settings', function (Blueprint $table) {
            $table->id();
            $table->string('service_title')->nullable();
            $table->string('service_sub_title')->nullable();
            $table->string('service_short_description')->nullable();
            $table->string('service_content')->nullable();            
            $table->string('donner_title')->nullable();
            $table->string('donner_sub_title')->nullable();
            $table->string('donner_short_description')->nullable();
            $table->string('donner_content')->nullable();
            $table->string('blog_title')->nullable();
            $table->string('blog_sub_title')->nullable();
            $table->string('blog_content')->nullable();            
            $table->string('testimonial_title')->nullable();
            $table->string('testimonial_sub_title')->nullable();
            $table->string('testimonial_content')->nullable();
            $table->string('album_title')->nullable();
            $table->string('album_sub_title')->nullable();
            $table->string('album_short_description')->nullable();
            $table->string('album_button_url')->nullable();
            $table->string('album_button_title')->nullable();
            $table->string('album_content')->nullable();
            $table->string('final_icon')->nullable();
            $table->string('final_title')->nullable();
            $table->string('final_short_description')->nullable();
            $table->string('final_url_link')->nullable();
            $table->string('final_url_title')->nullable();
            $table->string('final_icon_2')->nullable();
            $table->string('final_title_2')->nullable();
            $table->string('final_short_description_2')->nullable();
            $table->string('final_url_link_2')->nullable();
            $table->string('final_url_title_2')->nullable();            
            $table->string('tabA_content')->nullable();
            $table->string('tabB_content')->nullable();
            $table->string('tabC_content')->nullable();
            $table->string('additional_programs')->nullable();
            $table->string('final_banner')->nullable();
            $table->string('content')->nullable();
            $table->timestamps();
            table_fields($table);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('home_settings');
    }
}
