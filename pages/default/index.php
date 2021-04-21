<html>
    <header>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>Quantum Manager</title>
        
        <!-- 
        NOTE: The fonts will be independently 'imported' in the .CSS files
        -->
        
        <!-- CSS -->
        <link href="../../fonts/font-awesome.css" rel="stylesheet" type="text/css">
        
        <link href="CSS/Essentials/footer.css" rel="stylesheet" type="text/css">
        <link href="CSS/index.css" rel="stylesheet" type="text/css">
        
        <!-- Script -->
        <script src="../../jQuery/jquery-3.5.1.min.js"></script>
        <script src="JS/slider.js"></script>
    </header>


    <body>

        <?php
            require_once 'main-nav.php';
        ?>

        <main>
            <div class="presentacion-1">
                <div id="container1" class="content-container">
                    <h1>Quantum Manager</h1>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                    

                    <form action="https://google.com">
                        <input id="buttonLeft" type="submit" value="Conocenos">
                    </form>

                    <form action="https://google.com">
                        <input id="buttonRight" type="submit" value="Comenzar">
                    </form>
                    
                </div>
            </div>
            
            <div class="presentacion-2">
                <div id="container2" class="content-container">
                    <h1>Trabaja con nosotros</h1>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                    
                    
                </div>
            </div>
            
            
            
            <div class="slideshow">
                <ul class="slider">
                    <h1 id="testimonios-title">Testimonios:</h1>
                        <li>
                            <div class="comentarios-container">
                                <div class="comentarios-text">
                                    <p> Lorem ipsum dolor sit amet no se que wea escribir aca es un test ayuda Hello World!</p>

                                    <h2>- Nombre empresa -</h2>
                                </div>
                            </div>

                            <img src="img/slider/Logo-1.png">
                        </li>
                    
                        <li>
                            <div class="comentarios-container">
                                <div class="comentarios-text">
                                    <p> Lorem ipsum dolor sit amet no se que wea escribir aca es un test ayuda Hello World!</p>

                                    <h2>- Nombre empresa -</h2>
                                </div>
                            </div>

                            <img src="img/slider/Logo-1.png">
                        </li>
                </ul>

                <ol class="paginacion">
			
                </ol>
	
                <div class="izq">
                    <span class="fa fa-chevron-left"></span>
                </div>

                <div class="der">
                    <span class="fa fa-chevron-right"></span>
                </div>
            </div>
            
            
            
        </main>
        
        
        <footer>
            <div class="wrapper">
                <div id="left-footer">
                    <a href="#"><h1>Quantum Manager</h1></a>
                    <p>Ubicacion: <span>Vitacura, Calle Falsa 123</span></p>
                    <p>Correo: &emsp;&emsp;<span>QuantumComponents@gmail.com</span></p>
                    <p>Telefono: &emsp;<span>+569 1234 5678</span></p>
                </div>


                <div id="center-footer">
                    <p>Quienes somos:</p>
                    
                    <ul>
                        <a href="#"><li>Nuestros valores</li></a>

                        <a href="#"><li>Terminos y condiciones</li></a>

                        <a href="#"><li>Politicas de privacidad</li></a>
                    </ul>
                </div>
            </div>
        </footer>
    </body>
</html>