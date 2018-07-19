<!DOCTYPE html>

<html>
<head>
   
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="dolcegabbana" content="width=device-width"/>
    
    <title>Zoom</title>
    <script src="http://code.jquery.com/jquery-1.7.2.js"></script>
    <script type="text/javascript">
      
    
    var imageOffset_x = 0;
    var imageOffset_y = 0;
    
    //zoomma sul tastino
        function zoomIn()
        {
            var mouseInFrame_x = event.x;
            var mouseinFrame_y = event.y;
            var mouseInImage_x = imageOffset_x + mouseInFrame_x;
            var mouseInImage_y = imageOffset_y + mouseinFrame_y;
            imageOffset_x += mouseInImage_x * 0.16;
            imageOffset_y += mouseInImage_y * 0.16;

            var image = $('#container img');
            var imageWidth = image.width();
            var imageHeight = image.height();

            image.css({
                height: imageHeight * 1.2,
                width: imageWidth * 1.2,
                left: -imageOffset_x,
                top: -imageOffset_y
            });
        }

        //zoom sulla foto cliccandola
        function onRightClick() {
            imageOffset_x = 0;
            imageOffset_y = 0;

            $('#container img').css({
                height: 600,
                width: 400,
                left: 0,
                top: 0
            });

            return false;
        }
        


   //zoom out dal tastino
     function zoomOut()
        {
            var mouseInFrame_x = event.x;
            var mouseinFrame_y = event.y;
            var mouseInImage_x = imageOffset_x + mouseInFrame_x;
            var mouseInImage_y = imageOffset_y + mouseinFrame_y;
            imageOffset_x += mouseInImage_x / 0.16;
            imageOffset_y += mouseInImage_y / 0.16;

            var image = $('#container img');
            var imageWidth = image.width();
            var imageHeight = image.height();

            image.css({
                height: imageHeight / 1.2,
                width: imageWidth / 1.2,
                left: -imageOffset_x,
                top: -imageOffset_y
            });
        }
    </script>
   </head>
   
<body>

<button type="button"; class="glyphicon glyphicon-zoom-in" onclick="zoomIn();"><b>Zoom</b></i></button>
   
<button type="button"; class="glyphicon glyphicon-zoom-out" onclick="zoomOut();"><b>Zoom</b></i></button>

 
    <div id="container">
        <img src="img/lettino.jpg" width="400" height="600" onclick="zoomIn();" oncontextmenu="onRightClick(); return false;"/>
    </div>
    
    
     
</body>
</html>