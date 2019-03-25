<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/public/css/appart.css">
    <script src="/public/script/main.js"></script>
    <title>Title</title>
</head>
<body>
<?php require_once 'inc/header.php'?>
<main>

<?php
    echo '<section class="slider"><div class="glisseur">
        <ul>';
        for ($i = 1; $i <= $data['gallery']; $i++){
            echo sprintf('<li class="img1"><img src="/public/img/gallery/large/%d-%d.jpg" alt="Salon"></li>', $data['serial'].$data['id'], $i);
        }
    echo '</ul>
    </div><div class="navigator">
        <ul>
            <li class="left"><a href="#">&lt;</a></li>
            <li class="right"><a href="#">&gt;</a></li>
        </ul>
    </div>
    <p class="img_order">1 / '.$data['gallery'].'</p>
    </section>';

    echo '<section class="presenting">';
    echo sprintf('<div class="titles"><h1>%s</h1>', $data['type']);
    if (isset($_COOKIE['__fav__locatia__'])){
        if (in_array($data['id'], explode(',', $_COOKIE['__fav__locatia__']))){
            echo sprintf('<a href="#" class="addFav" data-id="%d"><i class="fav fav--clicked"></i></a>', $data['id']);
        }else{
            echo sprintf('<a href="#" class="addFav" data-id="%d"><i class="fav"></i></a>', $data['id']);
        }
    }else{
        echo sprintf('<a href="#" class="addFav" data-id="%d"><i class="fav"></i></a>', $data['id']);
    }
    echo sprintf('<h3>#%d</h3></div>', $data['serial'].$data['id']);
    $presnting = '
    <ul>
        <li><i class="pieces"></i><span>Pieces:</span> 0%d</li>
        <li><i class="surface"></i><span>Surface:</span> %g m</li>
        <li><i class="rooms"></i><span>Chambres:</span> 0%d</li>
        <li><i class="position"></i><span>Position:</span> %s %s</li>
    </ul>
    <p class="price">
        <small>Prix/nuité</small>
        <br>%d<b>Dh</b>
    </p>';
    echo sprintf($presnting,
        $data['pieces'],
        $data['surface'],
        $data['rooms'],
        utf8_encode($data['city']),
        utf8_encode($data['district']),
        $data['price']
    );
    echo '</section>';
    echo '<section class="description">';
    echo '<article class="desc"><h1>Description du bien</h1><p>'.utf8_encode($data['description']).'</p></article>';
    $general = explode(',', $data['external']);
    echo '<article class="gross">
    <h1>Grosso modo</h1>
    <ul>';
    foreach($general as $item){
        echo '<li>'.ucfirst(utf8_encode(trim($item))).'</li>';
    }
    echo '</ul>
    </article>';
    $internal = explode(',', $data['internal']);
    echo '<article class="intern">
    <h1>A l\'intérieur</h1>
    <ul>';
    foreach($internal as $item){
        echo '<li>'.ucfirst(utf8_encode(trim($item))).'</li>';
    }
    echo '</ul>
    </article>';
    $conditions = explode(',', $data['conditions']);
    echo '<article class="condition">
    <h1>Conditions à remplir</h1>
    <ul>';
    foreach($conditions as $item){
        echo '<li>'.ucfirst(utf8_encode(trim($item))).'</li>';
    }
    echo '</ul>
    </article>';
    echo '<section>';
?>
</main>
<aside>
    <section class="contact">
        <h2>Prise de contact</h2>
        <div class="call_us">
            <p>06 26 62 91 99</p>
        </div>
        <p class="alternate">Ou</p>
        <div class="ask_callback">
            <p>
                <?php
                echo  sprintf('<a href="#callback" class="pop_callback" data-id="%d">Demander d\'être appelé(e)</a>', $data['serial'].$data['id']);
                ?>

            </p>
        </div>
    </section>
</aside>
<?php require_once 'inc/footer.php'?>
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
