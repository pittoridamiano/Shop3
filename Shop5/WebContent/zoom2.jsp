<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="dolcegabbana" content="width=device-width" />
    <title>Zoom</title>

    <style>
        div {
          width: 400px;
          height: 600px;
          overflow: hidden;
        }
        img {
          position: relative
        }
    </style>

    <script src="http://code.jquery.com/jquery-1.7.2.js"></script>

    <script type="text/javascript">

    var imageOffset_x = 0;
    var imageOffset_y = 0;

    
    function zoomIn()
    {
        var Page = document.getElementById('Body');
        var zoom = parseInt(Page.style.zoom) + 10 +'%'
        Page.style.zoom = zoom;
        return false;
    }
     
    function zoomOut()
    {
        var Page = document.getElementById('Body');
        var zoom = parseInt(Page.style.zoom) - 10 +'%'
        Page.style.zoom = zoom;
        return false;
    }
    
    
    </script>
    </head>
   <body runat="server" id="Body" style="zoom: 100%">


    <button style="font-size:24px" onclick="onZoom();">Zoom +<i class="fa fa-binoculars"></i></button>
      <button style="font-size:24px" onclick="zoomOut();">Zoom -<i class="fa fa-binoculars"></i></button>

        <div id="container">
            <img src="img/lettino.jpg" width="400" height="600" onclick="onZoom();" oncontextmenu="onRightClick(); return false;"/>
        </div>
    </body>
    </html>


 
 

 
