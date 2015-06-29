(function() {
    var menuButton = document.getElementsByClassName('menu-icon')[0];
    var menuLayer = document.getElementsByClassName('main-menu-layer')[0];
    var menu = document.getElementsByClassName('main-menu')[0];

    menuLayer.addEventListener('click', function(e) {

        var body = document.getElementsByTagName('body')[0];
        body.classList.remove('menu-visible');

        menuLayer.classList.add('menu-hidden');
        menu.classList.remove("menu-panel-visible");
    });

    menuButton.addEventListener('click', function(e) {

        menuLayer.classList.remove('menu-hidden');

        var body = document.getElementsByTagName('body')[0];
        body.classList.add('menu-visible');

        if (menu.classList.contains("menu-panel-visible")) {
            menu.classList.add("menu-panel-hidden");
            menu.classList.remove("menu-panel-visible");
        } else {

            menu.classList.add("menu-panel-visible");
            menu.classList.remove("menu-panel-hidden");
        }
    });

}());
