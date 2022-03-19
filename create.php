<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php require_once 'components/boot.php'?>
        <title>Add Product</title>
        <style>
            fieldset {
                margin: auto;
                margin-top: 100px;
                width: 60% ;
            }       
        </style>
    </head>
    <body>
        <fieldset>
            <legend class='h2'>Add Product</legend>
            <form action="actions/a_create.php" method= "post" enctype="multipart/form-data">
                <table class='table'>
                    <tr>
                        <th>Name</th>
                        <td><input class='form-control' type="text" name="name"  placeholder="Product Name" /></td>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td><input class='form-control' type="text" name="type"  placeholder="Type" /></td>
                    </tr>
                    <tr>
                        <th>Short description</th>
                        <td><input class='form-control' type="text" name="short description"  placeholder="Short description" /></td>
                    </tr>
                    <tr>
                        <th>Author first name</th>
                        <td><input class='form-control' type="text" name="author first name"  placeholder="Enter author first name" /></td>
                    </tr>
                    <tr>
                        <th>Author last name</th>
                        <td><input class='form-control' type="text" name="author last name"  placeholder="Enter author last name" /></td>
                    </tr>
                    <tr>
                        <th>Publisher name</th>
                        <td><input class='form-control' type="text" name="publisher name"  placeholder="Enter publisher name" /></td>
                    </tr>
                    <tr>
                        <th>Publisher address</th>
                        <td><input class='form-control' type="text" name="publisher address"  placeholder="Enter publisher address" /></td>
                    </tr>
                    <tr>
                        <th>Publish date</th>
                        <td><input class='form-control' type="date" name="publish date"  placeholder="Enter publish date" /></td>
                    </tr>    
                    <tr>
                        <th>ISBN code</th>
                        <td><input class='form-control' type="number" name= "ISBN_code" placeholder="code" step="any" /></td>
                    </tr>
                    <tr>
                        <th>Picture</th>
                        <td><input class='form-control' type="file" name="picture" /></td>
                    </tr>
                    <tr>
                        <td><button class='btn btn-success' type="submit">Insert Product</button></td>
                        <td><a href="index.php"><button class='btn btn-warning' type="button">Home</button></a></td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </body>
</html>