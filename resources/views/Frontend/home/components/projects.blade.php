<section>
    <div class="project-cont custom-cont">
        @php
            $flag = 1;
        @endphp
        @foreach ($projects as $project)
            @if ($flag % 2 == 0)
                <div class="img-div">
                    <img src="/{{ $project->thumb_image }}" alt="-">
                </div>
            @endif
            <div class="project-disc">
                @if ($project->tagline)
                    <span class="project-slogan">
                        {{$project->tagline}}
                    </span>
                @endif
                <h1>{{ $project->title }}</h1>
                <div @if ($flag % 2 == 0) class="right-list" @endif>
                    {!! $project->description !!}
                </div>
            </div>
            @if ($flag % 2 != 0)
                <div class="img-div">
                    <img src="/uploads/fotoAsok.jpg" alt="-">
                </div>
            @endif
            @php
                $flag += 1;
            @endphp
        @endforeach
        {{-- 
        <div class="img-div">
            <img src="/uploads/fotoSris.jpg" alt="-">
        </div>
        <div class="project-disc">
            <span class="project-slogan">
                Share your rides
            </span>
            <h1>We're all about the <br>power of optimization.</h1>
            <ul class="right-list">

                <li>
                    <div class="check"><i class="fas fa-check-circle"></i></div>
                    <div>Stories that speak to who you are as a brand</div>
                </li>
                <li>
                    <div class="check"><i class="fas fa-check-circle"></i></div>
                    <div>Stories that speak to who you are as a brand</div>
                </li>
                <li>
                    <div class="check"><i class="fas fa-check-circle"></i></div>
                    <div>Stories that speak to who you are as a brand</div>
                </li>


            </ul>
        </div> --}}
    </div>
</section>
