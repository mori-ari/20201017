<?php
//1.  DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=dev_db;charset=utf8;host=localhost','root','root');
} catch (PDOException $e) {
  exit('DBConnectError'.$e->getMessage());
}

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM book_list");
$status = $stmt->execute();

//３．データ表示
// $view=array();
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){    
    // $view .= '<div class="book_flex" data-id="'.$result['id'].'" id="balloonoya" onclick="showBalloon('.$result['id'].')">';
    $view .= '<div class="book_flex">';
    $view .= '<img class="book_size" src="'.$result['img_url'].'">';
    $view .= '<span class="balloon_off" style="text-align:left; margin: 4px;" id="'.$result['id'].'">';
    $view .= '<p class="p">タイトル：'.$result['bookname'].'</p>';
    $view .= '<p class="p">レビュー：'.$result['review'].'</p>';
    $view .= '<a href="'.$result['book_url'].'" target="_blank"><button style="text-align: left; margin: 4px;">詳細へ</button></a>';
    $view .= '<button style="text-align: left; margin: 4px;" class="close">閉じる</button>';
    $view .= '</span>';
    $view .= '</div> ';  
   }
}




?>



<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script src="js/jquery-2.1.3.min.js"></script>
    <title>本棚</title>
</head>

<body>
  <?php include('inc/header.php');?>
    <div id="main">
    
      <h1>本棚</h1>

      <p class="text">本をクリックしてレビューをチェック</p>


<div class="nav_box">
<a href="index.php"><div id="bt_return">次の本を登録</div></a>
</div>


      <div id="bg_book">
    <div id="bg_book_inbox">
    <?= $view ?>


   <!-- <div class="book_flex" id="balloonoya" onclick="showBalloon()">
  <img class="book_size"  src="●●●">
  <span class="balloon_off" id="makeImg">
      <p>タイトル：●●●</p>
      <p>レビュー：●●●</p>
    <button><a href="●●●" target="_blank">詳細へ</a></button>

  <button>閉じる</button>
</span>
</div>  -->



</div>
</div>









</div>



<?php include('inc/footer.php');?>



<script>

$('.book_flex').click(function(){
    $('.balloon').addClass('balloon_off').removeClass('balloon');
    $('.balloon_off',this).addClass('balloon').removeClass('balloon_off');
  });
   $('.close').click(function(){
    event.stopPropagation();
    $(this).parent().addClass('balloon_off').removeClass('balloon');
  });

</script>

</body>
</html>
