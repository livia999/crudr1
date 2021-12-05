<!DOCTYPE html>
<?php 
    include_once "conf/default.inc.php";
    require_once "conf/Conexao.php";
    $title = "Lista de Peças";
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
        $sql = "SELECT * FROM peca WHERE descricao LIKE '$procurar%' ORDER BY descricao";
$pdo = Conexao::getInstance();
$consulta = $pdo->query($sql);
while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
 
?>

<tr><td><?php echo "ID: {$linha['id']} <br>  Descrição: {$linha['descricao']}  <br> Valor: {$linha['valor']} reais <br> Fornecedor: {$linha['fornecedor']} <br> Garantia: {$linha['garantia']} <br><br>";
    
?>
        <?php  
}
?> 



</body>
</html>