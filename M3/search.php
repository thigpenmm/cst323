<?php
require_once 'searchCatalog.php';
?>
<!DOCTYPE html>
<html>
<head>
<style>
table {
border-collapse: collapse;
width: 100%;
color: darkCyan;
font-family: calibri;
font-size: 20px;
text-align: center;
}
th {
background-color: darkCyan;
color: white;
text-align: center;
}
tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
<body>
<table>
<tr>
<th>ID</th>
<th>ITEM_NO</th>
<th>PROD_DESC</th>
<th>PRICE</th>
<th>QUANTITY</th>

</tr>

<?php
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["ID"]. "</td><td>" . $row["ITEM_NO"] . "</td><td>". $row["PROD_DESC"] . "</td><td>"
    . $row["PRICE"] . "</td><td>". $row["QUANTITY"]. "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>

</table>
</body>
</html>
