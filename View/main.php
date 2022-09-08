<?php
include 'header.php';
if(!isset($_SESSION['email']))
{
    header("location:../index.php");
}
 echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
<strong>Login successfull!!!</strong>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
  <span aria-hidden="true">&times;</span>
</button>
</div>';
if(isset($_SESSION['email']) && isset($_SESSION['isPremium']) && $_SESSION['isPremium']=='1')
{
    echo "welcome ".$_SESSION['name']." you are premium user";
    header('location:premiumalbum.php');
}
elseif(isset($_SESSION['email']) && isset($_SESSION['isPremium']) && $_SESSION['isPremium']=='0')
{
    echo "welcome ".$_SESSION['name']." you are Normal user";
    header('location:normalalbum.php');
}

?>
<html>
  <body>
 

    
<div class="container my-5">
<div class="jumbotron">
  <font class="font-italic font-weight-bold"><h1 class="display-4">Sinha Album</h1></font>
  <p class="lead">Hey, Welcome to Sinha Album.There are two type of users, One is Normal User and Other is Premium User.</p>
  <hr class="my-4">
  <p>A photographic album or photo album, is a series of photographic prints collected by an individual person or family in the form of a book. Some book-form photo albums have compartments which the photos may be slipped into; other albums have heavy paper with an abrasive surface covered with clear plastic sheets, on which surface photos can be put. Older style albums often were simply books of heavy paper on which photos could be glued to or attached to with adhesive corners or pages</p>
  
</div>
</div>
</body>
</html>
<?php
include 'footer.php';

?>