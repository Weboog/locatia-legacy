<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Favorites</title>
    <link rel="icon" type="image/png" href="/public/img/icons/favicon.png">
    <link rel="stylesheet" href="/public/css/style.css">
    <script src="/public/script/main.js"></script>
</head>
<body>
<?php include_once ROOT . DS . 'inc/header.php' ?>
<main>
    <?php
    $wrapper = '<div class="wrapper">';
    $figure = '<figure>
            <a href="/appartments/details/%d" target="_self">
            <picture>
                <source media="(min-width: 960px)" srcset="/public/img/thumb/big/%d.jpg">
                <img src="/public/img/thumb/small/%d.jpg" alt="Thumb">
            </picture>
            <figcaption>
                <ul>
                    <li><i class="views"></i> %d</li>
                    <li><i class="album"></i> %d</li>
                </ul>
            </figcaption>
            </a>
        </figure>';

    $titles = '<div class="titles">
                <h1>%s</h1>
                <a href="#" class="addFav" data-id="%d"><i class="fav"></i></a>
                <h3>#%d</h3>
            </div>';
    $specs = '<ul class="specs">
                <li><i class="pieces"></i>Pièces : <b>0%d</b></li>
                <li><i class="surface"></i>Surface : <b>%g m²</b></li>
                <li><i class="room"></i>Chambres : <b>0%d</b></li>
                <li><i class="position"></i>Position : %s / <br><b>%s</b></li>
            </ul>';
    $price  ='<p class="price">
                <small>Prix/nuité</small><br>%d <b>Dh</b>
                </p>';
    $contact = '<ul class="contacting">
                <li><i class="call"></i>%s</li>
                <li><a href="#callback" class="pop_callback" data-id="%d"><i class="callback"></i><b>Callback</b></a></li>
            </ul>';
    $share = '<ul class="share">
                <li><a href="#"><i class="facebook"></i></a></li>
                <li><a href="#"><i class="instagram"></i></a></li>
            </ul>';
    $btn = '<p class="btn">
                <a href="/appartments/details/%d" target="_self">Voir en détails</a>
            </p>';
    //if ($data === false) die('No favourite list matches in Database');
    if ($data !== false) {
        echo '<h1 class="fav_head">Liste des favorites</h1>';
        foreach ($data as $appart){
            echo '<div class="appart">';
            $id = $appart['serial'].$appart['id'];
            echo sprintf($figure, $id, $id, $id, $appart['views'], $appart['gallery']);
            echo $wrapper;
            echo sprintf('<div class="titles"><h1>%s</h1>', $appart['type']);
            echo sprintf('<a href="#" title="Supprimer" class="deleteFav" data-id="%d"><i class="delete"></i></a>', $appart['id']);
            echo sprintf('<h3>#%d</h3></div>', $appart['serial'].$appart['id']);
            echo sprintf($specs, $appart['pieces'], $appart['surface'], $appart['rooms'], utf8_encode($appart['city']), $appart['district']);
            echo sprintf($price, $appart['price']);
            echo sprintf($contact, '06 26 62 91 99', $appart['serial'].$appart['id']);
            echo $share;
            echo sprintf($btn, $appart['serial'].$appart['id']);
            echo '</div>';//Wrapper close tag
            echo '</div>';//Appart close tag
        }
    }else {
        echo '<h1 class="fav_head">Votre liste favorite est vide</h1>';
    }


    ?>
</main>
<?php include_once ROOT . DS . 'inc/footer.php' ?>
<div class="popup" id="callback">
    <div class="popup__content popup__content--callback">
        <h2>Formulaire de Callback</h2>
        <div class="client">
            <p class="help">
                Remplissez les informations suivantes <br> pour que notre opérateur puisse vous contacter.
            </p>
            <form action="" name="callback">
                <input type="hidden" name="appart" value="">
                <input type="text" name="name" placeholder="NOM">
                <input type="email" name="email" placeholder="E-MAIL">
                <input type="tel" name="phone" placeholder="TELEPHONE">
            </form>
            <p class="help nb">
                En validant vous accéptez les conditions d'utilisation <br> et la politique de confidentialité.
            </p>
        </div>
        <div class="buttons-box">
            <a href="#">Annuler</a>
            <a href="#" class="ok">Valider</a>
        </div>
    </div>
</div>
</body>
</html>
