window.addEventListener('load', function () {
    let links = document.querySelectorAll('.link');
    links.forEach(function (item) {
        item.addEventListener('click', getHash);
    });

    function getHash(e) {
        let path = this.getAttribute('href');
        let sanitizedPath = path.replace('#', '');
        let parts = sanitizedPath.split('-');
        console.log(parts[0], parts[1]);
    }
});