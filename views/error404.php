<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans');
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background-image: linear-gradient(to bottom right, lightseagreen, steelblue);
            height: 100vh;
        }
        section{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 3em;
            font-family: 'Open Sans', sans-serif;;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        h1{
            padding: 0;
            margin: 0;
            font-size: 8em;
            color: white;
        }
        p{
            font-size: .8em;
            color: white;
            margin-bottom: 1em;
            text-transform: uppercase;
            text-align: center;
        }
        a{
            text-decoration: none;
            display: block;
            width: 50%;
            margin: 0 auto;
            text-align: center;
            border-radius: 5px;
            background-color: crimson;
            color: white;
            padding: .5em 0;
        }

        @media only screen and (min-width: 960px) {
            h1{
                font-size: 13em;
            }
            p{
                font-size: 1.2em;
            }
        }
    </style>
    <title>404</title>
</head>
<body>
    <section>
        <h1>404</h1>
        <p>La page que vous avez demandé est introuvable</p>
        <a href="#" class="btn_back">RETOUR</a>
    </section>
    <script>
        let btn_back = document.querySelector('.btn_back');
        btn_back.addEventListener('click', function () {
            history.back();
        })
    </script>
</body>
</html>