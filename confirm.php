<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST['bookname']) && isset($_POST['img_url'])&& isset($_POST['book_url'])&& isset($_POST['review'])) {
        $_SESSION['bookname'] = $_POST['bookname'];
        $_SESSION['img_url'] = $_POST['img_url'];
        $_SESSION['book_url'] = $_POST['book_url'];
        $_SESSION['review'] = $_POST['review'];
    }
}
$bookname =$_SESSION['bookname'];
$img_url =$_SESSION['img_url'];
$book_url =$_SESSION['book_url'];
$review =$_SESSION['review'];

function h($str){
  return htmlspecialchars($str, ENT_QUOTES, "UTF-8");
}

?>


<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
    <title>おすすめの本を登録（確認）</title>
  </head>
  <body>
  <?php include('inc/header.php');?>
    <div id="main">
    
      <h1>おすすめの本を登録（確認）</h1>

      <p class="text">以下の内容で登録します。</p>

      <form action="insert.php" method="post">
   
        <table>
          <tr>
            <td class="td"><label for="bookname">本のタイトル</label></td>
            <td ><?= h($bookname) ?></td>
        </tr>
          <tr>
            <td class="td"><label for="review">レビュー</label></td>
            <td ><?= h($review) ?></td>
        </tr>
        <tr>
            <td colspan="2" class="td" style="text-align:center;"><a href="<?= h($book_url) ?>"><img style="width:100px;" src="<?= h($img_url) ?>"></a></td>
        </tr>
        </table>


      <div class="nav_box">
      <a href="index.php"><div id="bt_return">修正</div></a>
      <div><input id="submit" type="submit" value="本を登録"></div>
    </div>  
    </form>
      </div>
      <?php include('inc/footer.php');?>
</body>
</html>
