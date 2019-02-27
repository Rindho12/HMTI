<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Laravel</title>
        <link rel="stylesheet" type="text/css" href="./css/bulma.min.css">
        <link rel="stylesheet" type="text/css" href="./fontawesome/css/all.min.css">
    </head>
    <body>
        <header>
            
        </header>
        <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
        <a class="navbar-item" href="https://bulma.io">
        <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
        </a>

        <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        </a>
        </div>

        <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
        <a class="navbar-item">
        Home
        </a>

        <a class="navbar-item">
        Documentation
        </a>

        <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
        More
        </a>

        <div class="navbar-dropdown">
        <a class="navbar-item">
        About
        </a>
        <a class="navbar-item">
        Jobs
        </a>
        <a class="navbar-item">
        Contact
        </a>
        <hr class="navbar-divider">
        <a class="navbar-item">
        Report an issue
        </a>
        </div>
        </div>
        </div>

        <div class="navbar-end">
        <div class="navbar-item">
        <div class="buttons">
        <a class="button is-primary">
        <strong>Sign up</strong>
        </a>
        <a class="button is-light">
        Log in
        </a>
        </div>
        </div>
        </div>
        </div>
        </nav>
        <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="./fontawesome/js/all.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {

  // Check for click events on the navbar burger icon
  $(".navbar-burger").click(function() {

      // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
      $(".navbar-burger").toggleClass("is-active");
      $(".navbar-menu").toggleClass("is-active");

  });
});
        </script>
    </body>
</html>
