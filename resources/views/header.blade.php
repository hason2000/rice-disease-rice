<div id="layout-sidenav" class="layout-sidenav sidenav sidenav-vertical bg-dark">
    <div class="app-brand demo">
        
    </div>
    <div class="sidenav-divider mt-0"></div>

    <!-- Links -->
    <ul class="sidenav-inner py-1">

        <!-- Dashboards -->
        <li class="sidenav-item @if(Request::route()->getName() == 'form_way') active @endif" id="form-way-id">
            <a href="{{ route('form_way') }}" class="sidenav-link">Form</a>
        </li>
        <li class="sidenav-item @if(Request::route()->getName() == 'question_way') active @endif" id="question-way-id">
            <a href="{{ route('question_way') }}" class="sidenav-link">Question</a>
        </li>
    </ul>
</div>
