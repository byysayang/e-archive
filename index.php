<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Krub%3A700/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400%2C700"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lilita+One%3A400"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Inria+Sans:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="login2.css" media="screen" title="no title">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="./styles/index.css"/>
  <title>Login Page</title>
</head>

<body>
  <div class="input">
      <img class="user-2" src="./assets/user2.png"/>
      <form action="connectlogin.php" method="POST">
          <div class="box-input">
              <i class='bx bxs-user'></i>
              <input type="text" name="username">
          </div>
          <div class="box-input">
              <i class='bx bx-lock-alt'></i>
              <input type="password" name="password">
          </div>
          <a href="beranda.php">
              <button type="submit" name="login" class="btn-input">MASUK</button>
          </a>
          <div class="bottom">
              <p>Belum punya akun?
                  <a href="register.html">Register disini</a>
              </p>
          </div>
      </form>
  </div>
</body>
</body>