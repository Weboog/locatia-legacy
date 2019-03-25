window.addEventListener('load', function () {

    let form = document.forms.namedItem('login');
    form.addEventListener('change', function (e) {
        let fd = new FormData(this);
        for (let val of fd.entries()) {
            console.log(val)
        }
    });


    
    /*let xhr = new XMLHttpRequest();
    xhr.addEventListener('progress', function (e) {
        if (e.lengthComputable) {
            console.log(e.loaded, e.total)
        }
    });
    xhr.open('GET', 'http://www.ovh.net/files/100Mb.dat', true);
    xhr.send(null);*/
});