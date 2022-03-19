<?php
require_once 'actions/db_connect.php';

if ($_GET['id']) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM media WHERE media_id = {$id}";
    $result = mysqli_query($connect, $sql);
    if (mysqli_num_rows($result) == 1) {
        $data = mysqli_fetch_assoc($result);
        $name = $data['name'];
        $type = $data['type'];
        $short_description = $data['short_description'];
        $author_first_name = $data['author_first_name'];
        $author_last_name = $data['author_last_name'];
        $publisher_name = $data['publisher_name'];
        $publisher_address = $data['publisher_address'];
        $publish_date = $data['publish_date'];
        $ISBN_code = $data['ISBN_code'];
        $picture = $data['picture'];
    } else {
        header("location: error.php");
    }
    mysqli_close($connect);
} else {
    header("location: error.php");
}
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Edit Product</title>
        <?php require_once 'components/boot.php'?>
        <style type= "text/css">
            fieldset {
                margin: auto;
                margin-top: 100px;
                width: 60% ;
            }  
            .img-thumbnail{
                width: 70px !important;
                height: 70px !important;
            }     
        </style>
    </head>
    <body>
        <fieldset>
            <legend class='h2'>Update request <img class='img-thumbnail rounded-circle' src='pictures/<?php echo $picture ?>' alt="<?php echo $name ?>"></legend>
            <form action="actions/a_update.php"  method="post" enctype="multipart/form-data">
                <table class="table">
                    <tr>
                        <th>Name</th>
                        <td><input class="form-control" type="text"  name="name" placeholder ="Product Name" value="<?php echo $name ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td><input class="form-control" type= "text" name="type" placeholder="Type" value ="<?php echo $type ?>" /></td>
                    </tr>
                    <tr>
                        <th>Short description</th>
                        <td><input class="form-control" type="text"  name="short description" placeholder ="Short description" value="<?php echo $short_description ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Author first name</th>
                        <td><input class="form-control" type="text"  name="author first name" placeholder ="Enter author first name" value="<?php echo $author_first_name ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Author last name</th>
                        <td><input class="form-control" type="text"  name="author last nameme" placeholder ="Enter author last name" value="<?php echo $author_last_name ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Publisher name</th>
                        <td><input class="form-control" type="text"  name="publisher name" placeholder ="Enter publisher name" value="<?php echo $publisher_name ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Publisher address</th>
                        <td><input class="form-control" type="text"  name="publisher address" placeholder ="Enter publisher address" value="<?php echo $publisher_address ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Publish date</th>
                        <td><input class="form-control" type="text"  name="publish date" placeholder ="Enter publish_date" value="<?php echo $publish_date ?>"  /></td>
                    </tr>
                    <tr>
                        <th>ISBN_code</th>
                        <td><input class="form-control" type="code"  name="ISBN code" placeholder ="Enter ISBN_code" value="<?php echo $ISBN_code ?>"  /></td>
                    </tr>
                    <tr>
                        <th>Picture</th>
                        <td><input class="form-control" type="file" name= "picture" /></td>
                    </tr>
                    <tr>
                        <input type= "hidden" name= "media_id" value= "<?php echo $data['media_id'] ?>" />
                        <input type= "hidden" name= "picture" value= "<?php echo $data['picture'] ?>" />
                        <td><button class="btn btn-success" type= "submit">Save Changes</button></td>
                        <td><a href= "index.php"><button class="btn btn-warning" type="button">Back</button></a></td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </body>
</html>