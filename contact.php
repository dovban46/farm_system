<?php $active = "contact" ?>
<?php include "header.php"; ?><br>

<div>
    <h2>
        <font color="red">
            <marquee> Якщо у вас виникли запитання, пов’язані з сільським господарством, ця сторінка допоможе вам звернутися до нас із цим питанням...   </marquee>
        </font>
    </h2>
</div>

<div>
    <form action="" method="post" enctype="multipart/form-data">
        <table border="3" align="center" height="400" width="50%" class="more_detail" style="font-size: 18px;">
            <tr align="center">
                <td> Ім'я</td>
                <td> <input type="text" name="nm" placeholder="Введіть ім'я" required></td>
            </tr>
            <tr align="center">
                <td>Номер мобільного</td>
                <td> <input type="text" name="mo" placeholder="Введіть номер мобільного" required></td>
            </tr>
            <tr align="center">
                <td>Запитання</td>
                <td> <textarea placeholder="Введіть своє запитання " name="q" required></textarea></td>
            </tr>
            <tr align="center">
                <td colspan="2"> <input type="submit" name="s" value="Відправити "></td>
            </tr>
        </table>
    </form>
</div>



<?php
if (isset($_POST['s'])) {
    include "connection.php";
    $name = $_POST['nm'];
    $mobile = $_POST['mo'];
    $question = $_POST['q'];
    mysqli_query($con, "insert into contact(name,mobile,question) values('$name','$mobile','$question')");
    echo " <br> <div class='bg-success ' style='color:white; padding:15px;'>Ваше запитання успішно надіслано  </div>";
}
?>

<?php include "footer.php"; ?>
