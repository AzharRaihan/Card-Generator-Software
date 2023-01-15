@if(Session::has('message'))
    <div class="alert alert-{{ Session::get('type') ?? 'info' }} alert-dismissible fade show">
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        <div class="alert-body">
            <p>
                <i class="m-right fa fa-{{ Session::get('sign') ?? 'check' }}"></i>
                {{ Session::get('message') }}
            </p>
        </div>
    </div>
@endif
