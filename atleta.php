<!DOCTYPE html>
<?php 
    include_once "conf/default.inc.php";
    require_once "conf/Conexao.php";
    $title = "Lista de Atletas";
    $procurar = isset($_POST['procurar']) ? $_POST['procurar'] : "";
?>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title> <?php echo $title; ?> </title>
</head>
<body>
<?php include "menu.php"; ?>
</br></br>
<form method="post">
<fieldset>
        <legend>Procurar</legend>
        <input type="text"   name="procurar" id="procurar" size="37" value="<?php echo $procurar;?>">
        <input type="submit" name="acao"     id="acao">
        <br><br>

</form>
<br>
<?php
        $sql = "SELECT * FROM atleta WHERE nome LIKE '$procurar%' ORDER BY nome";
$pdo = Conexao::getInstance();
$consulta = $pdo->query($sql);
while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
 
?>

<tr><td><?php echo "ID: {$linha['id']} <br>  Nome: {$linha['nome']}  <br> Peso: {$linha['peso']} Kg <br> Altura: {$linha['altura']} m <br><br>";
    
?>
        <?php  
}
?> 



</body>
</html>