<?php $active = "home" ?>
<?php include  "header.php"; ?>
<div>
    <div id="carouselExample" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="v3.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="v4.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="v5.png" class="d-block w-100" alt="...">
            </div>
        </div>
    </div>
</div>

<div class="container-fluid bg-light p-5 content">
    <h3 style="color: Green; text-decoration: underline; text-align: center; font-family: @Arial Unicode MS;">
        CЕЛЯНСЬКЕ(ФЕРМЕРСЬКЕ) НАУКОВО - ВИРОБНИЧЕ ГОСПОДАРСТВО КОВАЛЬ </h3>
<center>Селянське господарство  <b> “Коваль” </b> спеціалізується на вирощуванні елітного насіння картоплі та
    зернових культур</center> <br>
    <b>Рослинництво</b> <br>
    В господарстві вирощують традиційні культури:
    озиму та яру пшеницю, ячмінь, ріпак, соняшник, кукурудзу, сою. Пшениця і ячмінь у СФНВГ «Коваль» дають у середньому
    7-8 т/га. Є також 220 га гороху й 50 га цукрового буряку.
    Протягом восьми років у СФНВГ «Коваль» вирощували картоплю, з якої роблять чіпси. Раніше під неї відводили 120 га
    площ, а останнім часом об’єми зменшились до 30 га.
    <br>
<b>Тваринництво</b> <br>
    На території господарства є свиноферма де утримують 5 тис. голів свиней. Всі свинарники з
    автоматичною системою подачі кормів, терморегуляцією загонів та потужною вентиляцією. Обладнання там польське,
    компанії Vestrum.
                            
</div>

<br><br>
<div class=container>
    <div class="row" >
        <div class="col">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <div class="row">
                        <?php include "connection.php";
                        $s = mysqli_query($con, "select * from khatar limit 4");
                        while ($r = mysqli_fetch_array($s)) {
                        ?>
                            <div class="col-lg-3 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <div class="d-flex justify-content-center">
                                        <img src="admin/<?php echo $r['photo']; ?>" class="img-fluid mx-auto" alt="Image" style='width: 263px; height:170px;'>
                                    </div>
                                    <div class="why-text">
                                        <h2><?php echo $r['khatar_title']; ?></h2>
                                        <p><?php echo nl2br($r['khatar_short']); ?></p>

                                        <h5 align="center">
                                            <a href="khatar_more.php?id=<?php echo $r['id']; ?>" class="btn btn-primary mt-4">Переглянути </a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>

                <div class=" p-4 text-center"><a href="khatar.php" class="btn btn-info">Натисніть тут, щоб побачити все </a></div>
            </div>
        </div>
    </div>
</div>
<div class="col">

</div>
<div class="col"></div>
</div>
</div>



<div class=container>
    <div class="row">
        <div class="col">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <div class="row">
                        <?php include "connection.php";
                        $s = mysqli_query($con, "select * from dava limit 4");
                        while ($r = mysqli_fetch_array($s)) {
                        ?>
                            <div class="col-lg-3 col-md-6 special-grid drinks">
                                <div class="gallery-single fix">
                                    <div class="d-flex justify-content-center">
                                        <img src="admin/<?php echo $r['photo']; ?>" class="img-fluid" alt="Image" style='width: 263px; height:170px;'>
                                    </div>
                                    <div class="why-text">
                                        <h2><?php echo $r['dava_title']; ?></h2>
                                        <p><?php echo nl2br($r['dava_short']); ?></p>

                                        <h5 align="center">
                                            <a href="dava_more.php?id=<?php echo $r['id']; ?>" class="btn btn-primary mt-4"> Переглянути</a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
                <div class=" p-4 text-center"><a href="dava.php" class="btn btn-info">Натисніть тут, щоб побачити все </a></div>
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
