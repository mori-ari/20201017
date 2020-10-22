<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>本を登録</title>
      <style>

      </style>
  </head>
  <body>
<?php include('inc/header.php');?>

    <div id="main">

      <h1>おすすめの本を登録</h1>
      <form action="confirm.php" method="post" enctype="multipart/form-data">
        <table>
         <tr>
            <td class="td"><label for="bookname">本のタイトル</label></td>
            <td><input type="text" placeholder="本のタイトルを入力してください" class="width" id="bookname" name="bookname" required></td>
        </tr>
        <tr>
            <td class="td"><label for="img_url">画像URL</label></td>
            <td><input type="url" placeholder="(例)http://www/gsbooks.com/img.jpg" class="width" id="img_url" name="img_url" required></td>
        </tr>
        <tr>
            <td class="td"><label for="book_url">詳細URL</label></td>
            <td><input type="url" placeholder="(例)http://www/gsbooks.com/book.html" class="width" id="book_url" name="book_url" required></td>
        </tr>
          <tr>
            <td class="td"><label for="review">一言レビュー</label></td>
            <td><textarea rows="3" cols="40" id="review" placeholder="(例)今年一番面白かった！" name="review"></textarea></td>            
        </tr>
        </table>
        <div class="nav_box"><input id="submit" type="submit" value="確認"></div>
      </form>

      </div>

      <?php include('inc/footer.php');?>


  </body>
</html>

