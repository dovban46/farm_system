<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<body>
<?php $active = "dava" ?>
<?php include "header.php"; ?>
	<br><br><br>
	<table border="1" width="75%" height="75%" align="center" class="more_detail">
	<?php include 'connection.php';
		$id = $_GET['id'];
		$s = mysqli_query($con,"select * from dava where id='$id'");
		while($r = mysqli_fetch_array($s))
			 {
	?>
		<tr align="center" style="font-weight: 600;font-size:20px">
			<td colspan="3"><?php echo $r['dava_title']; ?></td>
		</tr>
		<tr>
			<td rowspan="2"  align="center"><img src="<?php echo "admin/".$r['photo']; ?>"  width="150" height="200"></td>
			<td width="200" style="padding-left: 20px;">Серійний номер</td>
			<td style="padding-left: 20px;"><?php echo $r['id']; ?></td>
		</tr>
		<tr>
			<td style="padding-left: 20px;">Деталі насіння </td>
			<td style="padding-left: 20px;"><?php echo nl2br($r['dava_short']); ?> </td>
		</tr>
		<tr>
			<td colspan="3" style="padding-left: 20px;"><?php echo nl2br($r['details']); ?> </td>
		</tr>

		<?php }  ?>

	</table>
	<?php include "footer.php"; ?>
</body>
</html>
