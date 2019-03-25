window.addEventListener('load', function () {

    let images = document.querySelector('.images');

        let imagesSrc = [
            {label: 'salon', src: 'p1.jpg'},
            {label: 'kitchen', src: 'p2.jpg'},
            {label: 'bathroom', src: 'p3.jpg'},
        ];
        imagesSrc.forEach(function (obj) {
            let img = new Image();
            img.addEventListener('load', function () {
               let li = document.createElement('li');
               li.appendChild(this);
               images.appendChild(li);
            });
            img.src = obj.src;
            img.alt = obj.label;
        });

        let flags = document.querySelectorAll('.flag__item');
        flags.forEach(function (flag) {
            flag.addEventListener('click', function () {
                let selected = images.children.item(this.dataset.img);
            })
        })
});