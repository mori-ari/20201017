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
    $view .= '<div class="book_flex" id="balloonoya" onclick="showBalloon()">';
    $view .= '<img class="book_size" src="'.$result['img_url'].'">';
    $view .= '<span class="balloon_off" style="text-align:left; margin: 4px;" id="'.$result['id'].'">';
    $view .= '<p class="p">タイトル：'.$result['bookname'].'</p>';
    $view .= '<p class="p">レビュー：'.$result['review'].'</p>';
    $view .= '<button><a href="'.$result['book_url'].'" target="_blank">詳細へ</a></button>';
    $view .= '<button>閉じる</button>';
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

      <p class="text">本をクリックするとそのid内のclassを書き換える<br>ループ処理をしたかったのですが、挫折しました(TT)<br>どこを押しても同じものが開いてしまいます。</p>


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



// for (let i = 0; i < ●●.length; i++) {
// }


function showBalloon(){
let id_1	= document.getElementById("1");
if(document.getElementById("1")){
  if (id_1.className == "balloon_off"){
    id_1.className = "balloon";
}else{
  id_1.className = "balloon_off";
}
}
}




// function showBalloon(){
// $('#1').on('click', function(){
//   if(this.hasClass('balloon_off')){
//   $(this).removeClass('balloon_off').addClass('balloon');
// }else{
//   $(this).removeClass('balloon').addClass('balloon_off');
// }
// });
// };



// function showBalloon(e){
//   const data = e.currentTarget.dataset['index']; // 1が返される

// $('#makeImg').on('click', function(){
//             var click =  $(this).data('id');
        
//         });


// $(function showBalloon(){
//   // const data = e.currentTarget.dataset['id']; // 1が返される
//   $('#balloonoya').click(function(){
//     console.log(element.dataset.dataName);
// });

// });

// function showBalloon(e) {
//   const target1 = document.getElementById('balloonoya');
//   console.log(target1);
//   const data = e.currentTarget.dataset['id']; // 1が返される
//   console.log(getAttribute('data-id'));
//   $(data).click(function(){
//     console.log("で");
// });

// }

</script>

</body>
</html>




