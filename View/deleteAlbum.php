<?php
include '../Classes/Album.php';
include '../Classes/Db.php';
$Db=new Db();
  $con=$Db->getConnection();
$album=new Album($con);

if (isset($_GET['act'])) {
    $id = $_GET['albumid'];
    // echo $id;
    // die();
    $deleteAlbumRst = $album->deleteAlbum($id);
    if($deleteAlbumRst) {
      header('location:normalalbum.php?del=success');
  
    }
  }

// echo "i am here";