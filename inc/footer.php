<footer>
    <h1></h1>
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
    <div class="newsletter">
        <h2>Inscription à la NEWSLATTER</h2>
        <form name="newsletter">
            <input type="email" name="email" placeholder="Adresse email">
            <input type="submit" name="submit" value="&gt;&gt;">
        </form>
        <p>Soyez au courant des nouveaux services et fonctionnalités proposés par Locatia.</p>
    </div>
    <div class="links">
        <div>
            <strong>Liens utiles</strong>
            <ul>
                <li><a href="#">Vie privée</a></li>
                <li><a href="#">Condition d'utilisation</a></li>
            </ul>
        </div>
        <div>
            <strong>Services &plus;</strong>
            <ul>
                <li><a href="#">Vie privée</a></li>
                <li><a href="#">Condition d'utilisation</a></li>
            </ul>
        </div>
        <div>
            <strong>FAQ</strong>
            <ul>
                <li><a href="#">Vie privée</a></li>
                <li><a href="#">Condition d'utilisation</a></li>
            </ul>
        </div>
    </div>
    <p class="slogan">C'est facile de se loger.</p>
    <p class="webmaster">Made with <i class="love"></i> by Weboog</p>
</footer>
<div class="popup__message">
    <h3></h3>
    <p>
        Votre demande de CallBack est prise en compte, <br>
        notre opérateur prendera contact avec vous dans quelques minutes <br>
        Merci de nous avoir contacté.
    </p>
    <a href="#" class="understood">Compris</a>
</div>