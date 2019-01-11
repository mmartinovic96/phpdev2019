<html>
    <head>
        <title>prva</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form action="#" method="REQUEST">
                Ime: <input type="text" name="ime" value="" size="22" /><br>
                Prezime: <input type="text" name="prezime" value="" size="22" /> <br>
                Spol: <input type="radio" name="spol" value="M" checked="checked" />muško
                <input type="radio" name="spol" value="Z" />žensko<br>

                Županija: <select name="zupanija">
                    <option value="1">Grad Zagreb</option>
                    <option value="2">Zagrebačka zupanija</option>
                </select><br>

                Interesi: 
                <input type="checkbox" name="interesi[]" value="1" />sport<br>
                <input type="checkbox" name="interesi[]" value="2" />muzika<br>
                <input type="checkbox" name="interesi[]" value="3" />računalo<br>
                <br>
                
                Napomena: <textarea name="napomena" rows="4" cols="20">
                </textarea>
                <br><br>
                
                <input type="submit" value="Obrada" name="submit_btm" />


            </form>










        </div>
    </body>
</html>



<?php

if (isset($_REQUEST["submit_btm"])){

    var_dump($_REQUEST);
echo "<br>";
echo "varijabla ime je: " .$_REQUEST["ime"];
echo "<br>";
foreach ($_REQUEST["interesi"] as $key => $value) {
    switch ($value) {
        case 1:$v="Sportski";


            break;
        
        case 2:$v="Muzicki";


            break;
        
        case 3:$v="Računala";


            break;

       
    }
    echo "moj interes je: " .$v ."<br>";
    
}
}

