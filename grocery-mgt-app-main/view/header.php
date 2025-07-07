<?php
require_once './lib.php'; // +
$success = getFlash('success'); // +
$error = getFlash('error'); // +
   ?>
<!DOCTYPE html>
<html lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Manage your grocery list efficiently with this grocery management system.">
    <title>Grocery Dashboard</title>
    <link rel="stylesheet" href="/grocery-mgt-app-main/css/style.css">
</head>
<body>
    <header>
        <h1>🥦🛒 MarketWave 🛒🌊</h1>
    </header>
<?php if ($success): ?>
    <p style="color:green;"><?= $success ?></p>
<?php endif; ?>
<?php if ($error): ?>
    <p style="color:red;"><?= $error ?></p>
<?php endif; ?>
    

    
