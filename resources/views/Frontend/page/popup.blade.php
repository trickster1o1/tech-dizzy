<style type="text/css">.modal-body img{ max-width: 460px !important; }</style>
@if(isset($popup_messages) && $popup_messages  && $popup_messages->count())
	@foreach($popup_messages as $key=>$popup)

	<div class="modal fade checkstaticBackdrop" id="popup-message-{{$key}}" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title">{{$popup->title}}</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body img-fluid">
	       
	      	{!!$popup->popup_description!!}

	      </div>
	      <!-- <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	      </div> -->
	    </div>
	  </div>
	</div>
	@endforeach
@endif