<header>
    <ul class="menu">
        <li><a href="/appartments" class="home"></a></li>
        <li><a href="/favourite" class="heart"></a></li>
    </ul>
    <a href="/"><h1>Locatia</h1></a>
    <!--<div>
        <span class="label">Sélectionnez une ville</span><i></i><a href="#" class="city">Rabat</a>
    </div>-->
    <ul class="info">
        <li><i class="mobile"></i><span>Pour toute info et résa<br><b>06 26 62 91 99</b></span></li>
        <li class="pipe"></li>
        <li><i class="operator"></i><span> L'opérateur <strong>(CallBack)<br>De 10h à 22h 7/7</strong><br>
                <?php
                $start = new DateTime('now 10:00:00');
                $current = new DateTime('now');
                $end = new DateTime('now 22:00:00');

                if ($current >= $start && $current <= $end) {
                    echo '<b class="open">En ligne</b>';
                }else {
                    echo '<b class="closed">Hors ligne</b>';
                }
                ?>
            </span></li>
    </ul>
</header>
<section>
    <div class="map"></div>
    <div class="gradient">
        <p>
            <strong>1586 </strong><b>Apparetemnts</b>
            <span>Des appartements bien choisie par notre équipe se déplaçant dur place.</span>
        </p>
        <div class="sep"></div>
        <p>
            <strong>06 </strong><b>Zones géographiques</b>
            <span>Nous couvrons tout le térritoire de Rabat afin que vous puissiez choisir la zone qui vous soit adéquate.</span>
        </p>
    </div>
</section>
