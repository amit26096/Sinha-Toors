<?php
include 'header.php';
include '../Classes/Album.php';
include '../Classes/Db.php';
$Db=new Db();
  $con=$Db->getConnection();
if(!isset($_SESSION['email']))
{
    header("location:../index.php");
}
$album=new Album($con);
$details=$album->getPremiumAlbumDetail();
if(isset($_GET['updated']))
{
  $value=$_GET['val'] ? "Published":"Unpublished";
  echo '
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Congratulations</strong> Successfully '.$value .'
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
        </div> 
          ';
}
if(isset($_GET['current']))
{
    $curr=($_GET['current']=="Publish") ? "1":"0";
    $albumid=$_GET['albumid'] ;
    $updateResult=$album->updatealbum($curr,$albumid);
    if($updateResult)
    {
      
      header('location:premiumlalbum.php?updated=true&val='.$curr.'');
    

    }

    if (isset($_GET['del']) && $_GET['del'] == 'success') {
      echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
      <strong>Success</strong>Album deleted.
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
      </div>';
    }
     

}

 
?>
<div class="container">
<h1> This user has Premium Membership</h1>
<?php 
if(isset($_SESSION['email']) && $_SESSION['email'] == "sinhaamit553@gmail.com")
{

  echo '<a class="btn btn-danger my-4" href="addalbum.php?albumType=1">Create New Album</a>';
}
foreach($details as $detail){
echo '<div class="row d-flex justify-content-center mx-1">
<div class="card mx-1" style="width: 18rem;">
  <img src="../upload/'.$detail['albumimage'].'" height="200" class="card-img-top" alt="">
  <div class="card-body">
    <h5 class="card-title">'.$detail['Title'].'</h5>
    <p class="card-text">'.$detail['Description'].'</p>
    <a href="viewAlbum.php?albumId='.$detail['id'].'" class="btn btn-danger ">View</a>';
    ?>
   <?php
      if(isset($_SESSION['email']) && $_SESSION['email'] == "sinhaamit553@gmail.com")
      {
        $button = $detail['isPublish']?  "Unpublish":"Publish" ;
        echo '<a href="normalalbum.php?current='. $button .'&albumid='.$detail['id'].' " class="btn btn-danger ">'.$button.'</a>';
        echo '<a href="deleteAlbum.php?act=delete&albumid='.$detail['id'].' " class="btn btn-danger ">Delete</a>';
      }
    ?>
    
<?php
   echo '</div>
</div> ';
}
?>

</div>
</div>
<?php
include 'footer.php';