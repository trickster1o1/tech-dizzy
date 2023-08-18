@extends('Frontend.layouts.app')
@section('body')
    {{-- banner --}}
    @include('Frontend.page.includes.page')
    {{-- ------ --}}

    <section class="volunteers-one" id="team-data">
        <div class="container">
            <div class="row">
                @if (count($page))
                @foreach ($page as $team)
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <!--Volunteers One Single-->
                        <div class="volunteers-one__single">
                            <div class="volunteers-one__img">
                                <img src="{{$team->member_image ? '/'.$team->member_image : '/uploads/defaults/thumb/person-thumb.png'}}" alt="{{$team->name}}" title="{{$team->name}}">
                                
                            </div>
                            <div class="volunteers-one__content">
                                <h4 class="volunteers-one__name">{{$team->name}}</h4>
                                <p class="volunteers-one__title">{{$team->position ? $team->position : ' '}}</p>
                        
                                @if(strlen(trim(strip_tags($team->message))))
                                <a class="show-message" href="javascript:void(0);"> <i> Read Message</i>
                                    <span class="member-message d-none">{!!$team->message!!}</span>
                                </a>
                                @else
                                    &nbsp;
                                @endif
                            
                            </div>
                        </div>
                    </div>
                @endforeach
                    
            <div class="d-flex justify-content-center pt-4" style="padding-left: 1.5em;">
                {{$page->links()}}
            </div>
                @else 
                    <h2 align='center'>There are no Team Members right now</h2>
                @endif
                
            </div>
        </div>
    </section>
@endsection

<div class="modal fade" id="memberMessageModal" tabindex="-1" aria-labelledby="memberMessageModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="memberMessageModalLabel"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="display-message">
       
      </div>
    </div>
  </div>
</div>
@section('ajax-script')
<script type="text/javascript">
    $('#team-data').on('click','.show-message',function(){
        var message = $(this).find('.member-message').html();
        var title = $(this).parent().find('h4.volunteers-one__name').text();
        $('#memberMessageModalLabel').text(title);
        $('#display-message').html(message);

        var myModal = new bootstrap.Modal(document.getElementById('memberMessageModal'), {
          keyboard: false
        });
        myModal.show();
    });
</script>
@endsection