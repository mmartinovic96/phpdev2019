<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form action="#" method="GET">
                Ime: <input type="text" name="ime1" value="" size="22" /><br>
                <input type="text" name="ime2" value="" size="22" /><br>
                <input type="text" name="ime3" value="" size="22" /><br>
                <input type="text" name="ime4" value="" size="22" /><br>
                <input type="text" name="ime5" value="" size="22" /><br>
                Prezime: <input type="text" name="prezime1" value="" size="22" /> <br>
                <input type="text" name="prezime2" value="" size="22" /> <br>
                <input type="text" name="prezime3" value="" size="22" /> <br>
                <input type="text" name="prezime4" value="" size="22" /> <br>
                <input type="text" name="prezime5" value="" size="22" /> <br>

                <input type="submit" value="Obrada" name="submit_btm" />

            </form>




        </div>
    </body>
</html>

<?php
if (isset($_GET["submit_btm"])) {

    echo "<br>";
    echo "ime je: " . $_GET["ime1"];
    echo "<br>";
    echo "ime je: " . $_GET["ime2"];
    echo "<br>";
    echo "ime je: " . $_GET["ime3"];
    echo "<br>";
    echo "ime je: " . $_GET["ime4"];
    echo "<br>";
    echo "ime je: " . $_GET["ime5"];
    echo "<br>";
    echo "prezime je: " . $_GET["prezime1"];
    echo "<br>";
    echo "prezime je: " . $_GET["prezime2"];
    echo "<br>";
    echo "prezime je: " . $_GET["prezime3"];
    echo "<br>";
    echo "prezime je: " . $_GET["prezime4"];
    echo "<br>";
    echo "prezime je: " . $_GET["prezime5"];
    echo "<br>";
}
