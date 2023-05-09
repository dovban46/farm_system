<?php $active = "dava" ?>
<?php include  "header.php"; ?>
<div>
    <h2>
        <font color="red">
            <marquee> На цій сторінці ви отримаєте інформацію про назви різних зернових культур які ми вирощуємо</marquee>
        </font>
    </h2>
</div>

<div>
    <div id="carouselExample" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="dava.png" class="d-block w-100" alt="...">
            </div>
        </div>
    </div>
</div>
<br>



<div class=container>
    <div class="row">
        <div class="col">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <div class="row">
                        <?php include "connection.php";
                        $s = mysqli_query($con, "select * from dava");
                        while ($r = mysqli_fetch_array($s)) {
                        ?>
                            <div class="col-lg-4 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <div class="d-flex justify-content-center">
                                        <img src="admin/<?php echo $r['photo']; ?>" class="img-fluid" alt="Image" style='width: 263px; height:170px;'>
                                    </div>
                                    <div class="why-text">
                                        <h2><?php echo $r['dava_title']; ?></h2>
                                        <p><?php echo nl2br($r['dava_short']); ?></p>

                                        <h5 align="center">
                                            <a href="dava_more.php?id=<?php echo $r['id']; ?>" class="btn btn-primary mt-3"> Переглянути</a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col">

</div>
<div class="col"></div>
</div>
</div>

</div>
<?php include "footer.php"; ?>


<style type="text/css">
    .img {
        height: 400px;
        width: 1400px;
    }
</style>
