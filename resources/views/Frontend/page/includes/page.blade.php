<section>
    <div class="page-banner">
        <h1>{{$title}}</h1>
        <div>
            <small><a href="/">Home</a></small> / @if (isset($sub))
            <small><a href="{{$sublink}}">{{$sub}}</a></small> /
            @endif <span><small>{{$title}}</small></span>
        </div>
    </div>
</section>
