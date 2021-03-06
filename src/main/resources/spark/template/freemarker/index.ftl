<#include "/header.ftl">

<body>
<div class="loader"></div>

<div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">

<#include "/navbar.ftl">
<#include "/sidebar.ftl">


    <main class="mdl-layout__content mdl-color--grey-100">

        <!--THIS IS THE SEARCH BAR BOXING-->
        <div class="mdl-grid demo-content">
            <div class="mdl-cell mdl-cell--8-col">
                <div class="full-width-card mdl-card mdl-shadow--2dp">
                    <form action="" METHOD="POST">
                        <div class="mdl-card__title">
                            <h2 class="mdl-card__title-text">Bienvenido</h2>
                        </div>
                        <div class="mdl-card__supporting-text">

                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="URL" name="URL">
                                <label class="mdl-textfield__label" for="sample3">Entra el URL aqui...</label>
                            </div>
                        </div>
                        <div class="mdl-card__actions mdl-card--border">
                            <input type="hidden" name="username" id="username" value="${user.getUsername()}">
                            <input type="hidden" name="lat" id="lat" value="">
                            <input type="hidden" name="lng" id="lng" value="">
                            <input class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"
                                   type="submit" value="URL Short Done">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--END OF THE SEARCH BAR BOXING-->
        <div class="mdl-grid demo-content">

        <#list urls as url>
            <div class="mdl-cell mdl-cell--4-col">
                <div class="demo-card-wide mdl-card mdl-shadow--2dp">
                    <div class="mdl-card__title mdl-card--expand">
                        <img class="image-pefect" src="${url.getPreviewURL()}"/>
                    </div>
                    <div class="mdl-card__title mdl-card--expand">
                        <a href="/p/${url.getShortURL()}"><h2 class="mdl-card__title-text">
                            www.syllaurl.do/${url.getShortURL()}</h2></a>
                    </div>
                    <div class="mdl-card__supporting-text">
                        Directs to: ${url.getOriginalURL()}
                    </div>
                    <div class="mdl-card__actions mdl-card--border">
                        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"
                           href="/p/${url.getShortURL()}/stats">
                            VIEW STATS
                        </a>
                    </div>
                    <div class="mdl-card__menu">
                        <a href="javascript:fbShare('www.syllaurl.do/${url.getShortURL()}', 'Fb Share', 'Facebook share popup', 'https://www.colourbox.com/preview/2375712-vector-icon-of-scissors-all-layers-are-grouped.jpg', 520, 350)"
                           class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                            <i class="material-icons">share</i>
                        </a>

                    </div>
                </div>
            </div>
        <#else>
            <h3>Looks like you have no URL's , try adding one!</h3>
        </#list>


            <script type="text/javascript" src="https://www.google.com/jsapi"></script>
            <script>
                var pos = {
                    lat: -34.397,
                    lng: 150.644
                };
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (position) {
                        pos = {
                            lat: position.coords.latitude,
                            lng: position.coords.longitude
                        };
                        $('#lat').val(pos.lng);
                        $('#lng').val(pos.lat);
                    }, function () {
                        handleLocationError(true, infoWindow, map.getCenter());
                    });
                } else {
                    // Browser doesn't support Geolocation
                    handleLocationError(false, infoWindow, map.getCenter());
                }

            </script>
        </div>
    </main>
</div>


</body>