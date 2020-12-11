<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <title>Intrebari DRPCIV Examen Auto</title>

        <!-- Link Css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
    <body>
        <!-- header -->
        <header>
            <div class="clearfix">
                <div class="box">
                    <img src="img/drpciv.png" alt="drpciv" class="drpciv">
                </div>
                <div class="box">
                    <p class="wellcome">Bine ați venit la examenul auto!</p>
                </div>
            </div>
        </header>

        <!-- main -->
        <main>
            <h1 class="category">Selectaţi categoria de examinare:</h1>

            <!-- Radio buttons -->
            <div class="radio-toolbar">
                <input type="radio" id="category_1" name="radiocategory">
                <label for="category_1">A, A1, A2, AM</label>
            
                <input type="radio" id="category_2" name="radiocategory" checked>
                <label for="category_2">B, B1</label>
            
                <input type="radio" id="category_3" name="radiocategory">
                <label for="category_3">C, C1</label> 

                <input type="radio" id="category_4" name="radiocategory">
                <label for="category_4">D, D1, Tb, Tv</label> 

                <input type="radio" id="category_5" name="radiocategory">
                <label for="category_5">Tr</label> <br>
                <small>Merge doar "categoria B, B1"</small>
            </div>

            <!-- Captcha -->
            <div class="captcha">
                <div class="spinner">
                    <label>
                        <input type="checkbox" onclick="$(this).attr('disabled','disabled');">
                        <span class="checkmark"><span>&nbsp;</span></span>
                    </label>
                </div>
                <div class="text">
                    Nu sunt robot
                </div>
                <div class="logo">
                    <img src="img/captcha.png"/>
                    <small><a href="https://policies.google.com/privacy?hl=ro" target="_blank">Confidentialitate</a> - <a href="https://policies.google.com/terms?hl=ro" target="_blank">Termeni</a></small>
                </div>
            </div>

            <!-- Start button -->
            <div class="start_btn">
                <a href="language.php">
                    <button type="submit" class="start">START <i class="fas fa-arrow-right"></i></button>
                </a>
            </div>
        </main>
        
        <!-- footer -->
        <footer>
            <p class="copyright">CopyRight &#169; Anndrew </p>
        </footer>
    </body>
</html>