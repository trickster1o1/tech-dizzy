<section>
    <div id="carouselExampleAutoplaying" style="margin-top: 2em" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner testi-cont">
            @php
                $c = 1;
            @endphp
            @foreach ($testimonials as $testi)
                <div class="carousel-item custom-cont @if($c==1)active @endif" data-bs-interval="10000">
                    <div>
                        <div>{{$testi->name}}</div>
                        <div>
                            {{$testi->message}}
                        </div>
                    </div>
                </div>
                @php
                    $c+=1;
                @endphp
            @endforeach
            {{-- <div class="carousel-item custom-cont" data-bs-interval="10000">
                <div>
                    <div>Nikki <br> Sharma</div>
                    <div>Thik xa thikxa dhrai nai thik xa, yeti ramro xa ki k bhanum aaba ma. kei pani bhannai sakina.
                    </div>
                </div>
            </div>
            <div class="carousel-item custom-cont" data-bs-interval="10000">
                <div>
                    <div>Bikki <br> Sharma</div>
                    <div>Thik xa thikxa dhrai nai thik xa, yeti ramro xa ki k bhanum aaba ma. kei pani bhannai sakina.
                    </div>

                </div>
            </div> --}}
        </div>
        {{-- <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button> --}}
    </div>
</section>
