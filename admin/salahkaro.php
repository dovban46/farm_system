<?php  session_start();
if(isset($_SESSION['aid']))
{ 
include "menu.php"; ?>



            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">

                    <div class="col-sm-12 col-xl-12">
                        <form action="" method="post" enctype="multipart/form-data">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Доходи <a href="s_view.php" class="d-flex flex-row-reverse"> Переглянути </a> </h6>
                            <div class="form-floating mb-3">
                                <select class="form-select" id="floatingSelect"
                                    aria-label="Floating label select example" name="cate" required>
                                    <option value="2023">  2023 </option>
                                    <option value="2022">  2022</option>
                                    <option value="2021">  2021</option>
                                    <option value="2020">   2020 </option>
                                    <option value="2019"> 2019 </option>
                                    <option value="2018">   2018 </option>

                                </select>
                                <label for="floatingSelect">Виберіть рік</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingPassword"
                                    placeholder="city" name="city" required>
                                <label for="floatingPassword">Актив</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"
                                    placeholder="name@example.com" name="hodo" required>
                                <label for="floatingInput">Код</label>
                            </div>
                  			<div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"
                                    placeholder="name@example.com" name="name" required>
                                <label for="floatingInput">На початок року, тис. грн.</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"
                                    placeholder="name@example.com" name="mo">
                                <label for="floatingInput">На кінець року, тис. грн</label>
                            </div>
                           <div class="form-floating mb-3">
                                <input type="submit" value="Додати" class="form-control" id="floatingInput"
                                    placeholder="name@example.com" name="ins">
                            </div>
                        </div>
                    </div>
                </div>

            </form>
                 <?php
                    if (isset($_POST['ins']))
                    {
                        include "connection.php";  
                        $cate = $_POST['cate'];
                        $city = $_POST['city'];
                        $hodo = $_POST['hodo'];
                        $name = $_POST['name'];
                        $mo = $_POST['mo'];
                        mysqli_query($con,"insert into salahkaro(category,city,hodo,name,phone) values('$cate','$city','$hodo','$name','$mo')");
                        echo "<div class='bg-success ' style='color:white; padding:15px;'>Інформацію додано</div>";
                    }
                ?>


            </div>




<?php include "footer.php"; 
}
else
{
    header("location:index.php");
}
?>