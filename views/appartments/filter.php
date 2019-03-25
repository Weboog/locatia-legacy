<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Locatia</title>
    <link rel="icon" type="image/png" href="/locatia/public/img/icons/favicon.png">
    <link rel="stylesheet" href="/locatia/public/css/style.css">
    <script src="/locatia/public/script/main.js"></script>
</head>
<body>
<?php
include_once ROOT . DS . 'inc/header.php';
include_once ROOT . DS . 'inc/filter.php'
?>
<main>
    <?php
    $wrapper = '<div class="wrapper">';
    $figure = '<figure>
            <a href="/locatia/appartments/details/%d" target="_self">
            <picture>
                <source media="(min-width: 960px)" srcset="/locatia/public/img/thumb/big/%d.jpg">
                <img src="/locatia/public/img/thumb/small/%d.jpg" alt="Thumb">
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
                <a href="/locatia/appartments/details/%d" target="_self">Voir en détails</a>
            </p>';

    foreach ($data as $appart){
        echo '<div class="appart">';
        $id = $appart['serial'].$appart['id'];
        echo sprintf($figure, $id, $id, $id, $appart['views'], $appart['gallery']);
        echo $wrapper;
        echo sprintf('<div class="titles"><h1>%s</h1>', $appart['type']);
        if (isset($_COOKIE['__fav__locatia__'])){
            if (in_array($appart['id'], explode(',', $_COOKIE['__fav__locatia__']))){
                echo sprintf('<a href="#" class="addFav" data-id="%d"><i class="fav fav--clicked"></i></a>', $appart['id']);
            }else{
                echo sprintf('<a href="#" class="addFav" data-id="%d"><i class="fav"></i></a>', $appart['id']);
            }
        }else{
            echo sprintf('<a href="#" class="addFav" data-id="%d"><i class="fav"></i></a>', $appart['id']);
        }
        echo sprintf('<h3>#%d</h3></div>', $appart['serial'].$appart['id']);
        echo sprintf($specs, $appart['pieces'], $appart['surface'], $appart['rooms'], utf8_encode($appart['city']), $appart['district']);
        echo sprintf($price, $appart['price']);
        echo sprintf($contact, '06 26 62 91 99', $appart['serial'].$appart['id']);
        echo $share;
        echo sprintf($btn, $appart['serial'].$appart['id']);
        echo '</div>';//Wrapper close tag
        echo '</div>';//Appart close tag
    }
    ?>
</main>
<div class="pagination">
    <ul>
        <?php

        $index = explode('/', $_GET['url'])[4];
        $get_url = preg_replace('/\/[\d]+$/i', '/', $_GET['url']);

        if ($index <= 1){
            $index++;
        }
        echo sprintf('<li><a href="/locatia/%s%d">&lt;</a></li>', $get_url, $index-1);
        $division = count($data) / 3;
            for ($i=$index; $i<=$index+$division; $i++){
                echo sprintf('<li><a href="/locatia/%s%d">%d</a></li>', $get_url, $i-1, $i-1);
            }
        $index = explode('/', $_GET['url'])[4];
        echo sprintf('<li><a href="/locatia/%s%d">&gt;</a></li>', $get_url, $index+1);
        ?>
    </ul>
</div>
<?php include_once ROOT . DS . 'inc/footer.php' ?>
<div class="popup" id="budget">
    <div class="popup__content popup__content--budget">
        <h2>Trier par budget</h2>
        <div class="select-box">
            <select name="sense">
                <option value="0">Budget</option>
                <option value="1">Croissant</option>
                <option value="2">Décroissant</option>
            </select>
        </div>
        <div class="range-box">
            <input class="range" type="text" name="min" placeholder="MIN">
            <input class="range" type="text" name="max" placeholder="MAX">
        </div>
        <div class="buttons-box">
            <a href="#filter-budget">Annuler</a>
            <a href="#" class="" data-href="/locatia/appartments/filter/price/">Valider</a>
        </div>
    </div>
</div>
<div class="popup" id="surface">
    <div class="popup__content popup__content--budget">
        <h2>Trier par surface</h2>
        <div class="select-box">
            <select name="sense">
                <option value="0">Surface</option>
                <option value="1">Croissante</option>
                <option value="2">Décroissante</option>
            </select>
        </div>
        <div class="range-box">
            <input class="range" type="text" name="min" placeholder="MIN">
            <input class="range" type="text" name="max" placeholder="MAX">
        </div>
        <div class="buttons-box">
            <a href="#filter-surface">Annuler</a>
            <a href="#" class="" data-href="/locatia/appartments/filter/surface/">Valider</a>
        </div>
    </div>
</div>
<div class="popup" id="pieces">
    <div class="popup__content popup__content--budget">
        <h2>Trier par nombre de pièces</h2>
        <div class="select-box">
            <select name="sense">
                <option value="0">Pièces</option>
                <option value="1">Croissant</option>
                <option value="2">Décroissant</option>
            </select>
        </div>
        <div class="range-box">
            <input class="range" type="text" name="min" placeholder="MIN">
            <input class="range" type="text" name="max" placeholder="MAX">
        </div>
        <div class="buttons-box">
            <a href="#filter-pieces">Annuler</a>
            <a href="#" class="" data-href="/locatia/appartments/filter/pieces/">Valider</a>
        </div>
    </div>
</div>
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