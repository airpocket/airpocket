<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Scanner</title>
    <meta name="description" content="" />
    <meta name="Xebians" content="AirTraveller" />

    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="css/styles.css" />
  </head>

  <body>
      <header>
          <div class="headline">
              <h1>Smarter Airport</h1>
          </div>
      </header>
    <section id="container" class="container">
        
        <div class="controls">
            <fieldset class="input-group">
                <button class="stop">Stop</button>
            </fieldset>
            <fieldset class="reader-config-group">
                <label>
                    <span>Barcode-Type</span>
                   <select name="decoder_readers">
                        <option value="code_128" selected="selected">Code 128</option>
						</select>
                </label>
            </fieldset>
        </div>
      <div id="result_strip">
        <ul class="thumbnails"></ul>
      </div>
	
      <div id="interactive" class="viewport">
	       
	  </div>
    </section>
          <footer>
        <p>
         Xebians
        </p>
      </footer>
    
    <script src="../src/vendor/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="../dist/quagga.js" type="text/javascript"></script>
    <script src="live_w_locator.js" type="text/javascript">
	</script>
  </body>
</html>
