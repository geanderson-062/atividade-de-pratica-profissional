<?php 
     session_start();
 ?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Login Administrador</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">

<link rel="stylesheet" href="../../../resources/css/login.css">

  </head>
  <body>

<main class="form-signin text-center">

  <form action="login_adm.php" method="POST">

    <img class="mb-4" src="../../../resources/img/imgnavbar.png" alt="" width="54" height="54">

    <h1 class="h3 mb-3 fw-normal text-white">Entrar</h1>

    <!--mensagem de erro 
  
      < php 
    //  if(isset($_SESSION['nao_autenticado']));
    //  se o usuario nao tiver autenticado mostrar msg de erro
      ?>

      <div>
        <p class="fs-1 text-white">Usuario ou senha invalido</p>
      </div>

      <php 
    //    unset($_SESSION['nao_autenticado']); //tirar a msg para novos usuarios
    //    endif; 

      ?>

    mensagem de erro fim -->

  
    <div class="form-control">
      <input name="cpf" type="text" class="form-control-lg" placeholder="122.208.404.09">
    </div>
<div>
<br>
</div>

    <div class="form-control">
      <input name="senha" type="password" class="form-control-lg" placeholder="123ola321">
    </div>

    <div class="checkbox mb-3 text-white">
      <label>
        <input type="checkbox" value="remember-me" onclick="mostrarOcultarSenha()"> Exibir Senha
      </label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Entrar</button>
    
    <p class="mt-5 mb-3 text-white">©2022 Uninassau Company, Inc</p>
  </form>

</main>

<script src="../../../resources/JS/exibir_senha.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
  </body>
</html>