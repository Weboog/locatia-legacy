
window.addEventListener('load', function () {
    const AJAX = {
        get: function (url, callback) {
            let xhr = new XMLHttpRequest();
            xhr.addEventListener('readystatechange', function () {
                if (this.readyState === 4 && this.status === 200){
                    callback(this.responseText);
                }
            });
            xhr.open(
                'GET',
                url,
                true
            );
            xhr.send();
        },
        post: function (url, obj, callback) {
            let xhr = new XMLHttpRequest();
            xhr.addEventListener('readystatechange', function () {
                if (this.readyState === 4 && this.status === 200){
                    callback(this.responseText);
                }
            });
            xhr.open(
                'POST',
                url,
                true
            );
            xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            let data = '';
            Object.entries(obj).forEach(function (arr) {
                data += arr[0] + '=' + arr[1];
                data += '&';
            });
            xhr.send(data.replace(/&$/ , ''));
        }
    };

    function serialize(form){
        let fd = new FormData(form);
        let data = Object.create({});
        for (let input of fd){
            Object.defineProperty(data, input[0], {
                enumerable: true,
                value: input[1],
                writable: true
            })
        }
        return data;
    }

    //SLIDER---------------------------------------------------
    if (document.querySelector('.glisseur ul')) {
        let glisseur = document.querySelector('.glisseur ul');
        let leftNav = document.querySelector('.navigator .left a');
        let rightNav = document.querySelector('.navigator .right a');
        let imgOrder = document.querySelector('.img_order');
        let imgLength = glisseur.children.length;

        let i = 1;
        function moveRight(e){
            e.preventDefault();
            glisseur.appendChild(glisseur.firstChild);
            i++;
            if (i === imgLength+1){
                i = 1;
            }
            imgOrder.innerText = i + ' / ' + imgLength;
        }
        function moveLeft(e){
            e.preventDefault();
            glisseur.insertBefore(glisseur.lastChild,glisseur.firstChild);
            i--;
            if (i === 0){
                i = imgLength;
            }
            imgOrder.innerText = i + ' / ' + imgLength;
        }

        leftNav.addEventListener('click', moveLeft);
        rightNav.addEventListener('click', moveRight);

        let slider = document.querySelector('.slider');
        let img = document.querySelectorAll('.slider img')[0];
        function autoResize(){
            slider.style.height = img.offsetHeight + 'px';
            //console.log(img.offsetHeight)
        }
        autoResize();
        window.addEventListener('resize', autoResize);
    }


    //NEWSLETTER------------------------------------------------
    let formNewsLetter = document.forms['newsletter'];
    formNewsLetter.addEventListener('submit', newsLetter);
    function newsLetter(e){
        e.preventDefault();
        let email = this.children['email'];
        let emailValue = email.value;
        AJAX.post(
            '/subscriptions/add',
            {'email':emailValue},
            function (data) {
                //Data in json format from php server
                let responseObject = JSON.parse(data);
                //Get parent element
                let parent =  e.target.parentNode;
                let msg = document.querySelector('.msg_form');
                if (msg === null){
                    let p = document.createElement('p');
                    if (responseObject.status === 1){
                        p.setAttribute('class', 'msg_form success');
                        email.value = '';
                    }else{
                        p.setAttribute('class', 'msg_form fail');
                    }
                    let msgText = document.createTextNode(responseObject.message);
                    p.appendChild(msgText);
                    parent.insertBefore(p, e.target);
                }else{
                    msg.innerText = responseObject.message;
                }
                setTimeout( () => {
                    if (document.querySelector('.msg_form')) {
                        parent.removeChild(document.querySelector('.msg_form'));
                    }
                }, 5000);
            }
        );
    }

    //Favourite manager--------------------------------------------------------------------//

    function addFav(ref){
        let id = ref.dataset.id;
        AJAX.get(
            '/favourite/add/'+id,
            function () {
                ref.children.item(0).classList.toggle('fav--clicked');
            }
        );
    }
    function deleteFav(ref){
        let id = ref.dataset.id;
        AJAX.get(
            '/favourite/delete/'+id,
            function () {
                ref.children.item(0).classList.toggle('fav--clicked');
            }
        );
    }
    function toggleFav(e) {
        e.preventDefault();
        if (this.children.item(0).classList.contains('fav--clicked')) {
            deleteFav(this);
        }else {
            addFav(this);
        }
    }
    function unlist(e){
        e.preventDefault();
        let id = this.parentElement.dataset.id;
        let appart = this.parentElement.parentElement.parentElement.parentElement;
        AJAX.get(
            '/favourite/delete/'+id,
            function () {
                document.querySelector('main').removeChild(appart);
            }
        );
    }

    let favs = document.querySelectorAll('.addFav');
    favs.forEach(function (item) {
        item.addEventListener('click', toggleFav);
    });

    let unlists = document.querySelectorAll('.delete');
    unlists.forEach(function (del) {
        del.addEventListener('click', unlist);
    });

    //Callback Manager--------------------------------------------------------------------//

    if (document.forms.namedItem('callback')) {
        let callabckForm = document.forms.namedItem('callback');
        let done = document.querySelector('.popup__message');
        function makeCallback(e){
            e.preventDefault();
            AJAX.post(
                '/callback/add',
                serialize(callabckForm),
                function (data) {
                    //Data in json format from php server
                    let responseObject = JSON.parse(data);
                    //Get parent element
                    let parent =  e.target.parentNode;
                    let msg = document.querySelector('.msg_form');
                    if (msg === null){
                        let p = document.createElement('p');
                        if (responseObject.status === 1){
                            document.forms.namedItem('callback').reset();
                            p.setAttribute('class', 'msg_form success');
                            let popup= document.querySelector('.popup:target');
                            let popupContent = document.querySelector('.popup:target .popup__content');
                            done.children.item(0).textContent = responseObject.message;
                            popupContent.style.display = 'none';
                            popup.appendChild(done);
                            done.classList.add('show_message');
                        }else{
                            p.setAttribute('class', 'msg_form fail');
                        }
                        let msgText = document.createTextNode(responseObject.message);
                        p.appendChild(msgText);
                        parent.appendChild(p);
                    }else{
                        msg.innerText = responseObject.message;
                    }
                    setTimeout( () => {
                        if (document.querySelector('.msg_form')) {
                            parent.removeChild(document.querySelector('.msg_form'));
                        }
                    }, 5000);
                    inc = 0;
                }
            );
        }
        callabckForm.addEventListener('submit', makeCallback);
        let understood = document.querySelector('.understood');
        understood.addEventListener('click', function (e) {
            let popupContent = document.querySelector('.popup:target .popup__content');
            popupContent.style.display = 'block';
            done.remove();
        })
    }

    //POPUPS MANAGER///////////////////////////////////////////////////////////////////////////////////////////
    function assignId(){
        let form = document.forms.namedItem('callback');
        let hidden = form.children.namedItem('appart');
        hidden.setAttribute('value', this.dataset.id);
    }
    let callbackButtons = document.querySelectorAll('.pop_callback');
    callbackButtons.forEach(function (c) {
        c.addEventListener('click', assignId);
    });

    let ok = document.querySelectorAll('.ok');
    ok.forEach(function (o) {
        o.addEventListener('click', function (e) {
            e.preventDefault();
            makeCallback(e);
        });
    });

    //Select sense--------------------------------------------------------------
    let sense = ['low', 'high'];
    let selects = document.querySelectorAll('.select-box');
    selects.forEach(function (select) {
        select.firstElementChild.addEventListener('change', function () {
            let range = this.parentElement.nextElementSibling;
            let validate = range.nextElementSibling.children.item(1);
            if (this.selectedIndex === 0){
                validate.href = '#';
                range.children.namedItem('min').removeAttribute('disabled');
                range.children.namedItem('max').removeAttribute('disabled');
            } else {
                validate.href = validate.dataset.href + sense[this.selectedIndex - 1] + '/1';
                range.children.namedItem('min').setAttribute('disabled', true);
                range.children.namedItem('max').setAttribute('disabled', true);
            }
        });
    });

    //Range MIN MAx--------------------------------------------------------------
    let ranges = document.querySelectorAll('.range');
    let rangeValues = {};
    ranges.forEach(function (range) {
        range.addEventListener('focusin', function () {
            let select = this.parentElement.previousElementSibling;
            select.firstElementChild.setAttribute('disabled', true);
            //select.setAttribute('disabled', true)
        });
        range.addEventListener('focusout', function () {
            if (this.nextElementSibling) {
                if (this.value === '' && this.nextElementSibling.value === '') {
                    let select = this.parentElement.previousElementSibling;
                    select.firstElementChild.removeAttribute('disabled');
                }

                if (this.value !== '') {
                    rangeValues.min = this.value;
                }
            }else if (this.previousElementSibling) {
                if (this.value === '' && this.previousElementSibling.value === '') {
                    let select = this.parentElement.previousElementSibling;
                    select.firstElementChild.removeAttribute('disabled');
                }

                if (this.value !== '') {
                    rangeValues.max = this.value;
                }
            }
            let buttonBox = this.parentElement.nextElementSibling;
            let validate = buttonBox.children.item(1);
            if (rangeValues.min < rangeValues.max) {
                if (rangeValues.min === undefined) {
                    rangeValues.min = 0;
                }
                if (rangeValues.max === undefined) {
                    rangeValues.max = 10000;
                }
                validate.href = validate.dataset.href + rangeValues.min+'-'+rangeValues.max + '/1';
            }
        });
    })

});
