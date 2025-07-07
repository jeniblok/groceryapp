<?php
if (!isset($activePage)) {
    $activePage = '';
}
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

//  Total quantity in cart
$cartCount = 0;
if (isset($_SESSION['cart13'])) {
    foreach ($_SESSION['cart13'] as $item) {
        $cartCount += $item['quantity'];
    }
}
?>
<nav class="main-nav">
  <div class="container nav-layout">
    <ul class="nav-center">
      <li><a href="index.php" class="<?= ($activePage == 'dashboard') ? 'active' : '' ?>">🏠 Shopping</a></li>
      <li><a href="index.php?action=add" class="<?= ($activePage == 'add') ? 'active' : '' ?>">➕ Add Item</a></li>
          <li>
            <a href="index.php?action=cart" class="<?= ($activePage == 'cart') ? 'active' : '' ?>">
            <span class="cart-icon-wrapper">
                 🛒
              <?php if ($cartCount > 0): ?>
               <span class="cart-badge"><?= $cartCount ?></span>
              <?php endif; ?>
                </span>
                Cart
              </a>
              </li>
    </ul>

    <ul class="nav-right">
      <?php if (isset($_SESSION['user'])) : ?>
        <li class="nav-user">👤 <?= htmlspecialchars($_SESSION['user']['username']) ?></li>
        <li><a href="index.php?action=logout" class="<?= ($activePage == 'logout') ? 'active' : '' ?>">Logout</a></li>
      <?php else : ?>
        <li><a href="index.php?action=login" class="<?= ($activePage == 'login') ? 'active' : '' ?>">🔐 Login</a></li>
        <li><a href="index.php?action=register" class="<?= ($activePage == 'register') ? 'active' : '' ?>">📝 Register</a></li>
      <?php endif; ?>
    </ul>
  </div>
</nav>
