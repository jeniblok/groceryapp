<?php
$activePage = 'register';
include 'header.php';
include 'nav.php';
?>

<main>
    <section class="form-container">
        <form action="index.php?action=register" method="post">
            <fieldset>
                <legend>📝 Register</legend>

                <?php if (!empty($error)) : ?>
                    <div class="error-message"><?= htmlspecialchars($error) ?></div>
                <?php endif; ?>

                <label for="username">Username</label>
                <input type="text" id="username" name="username" required autofocus>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>

                <label for="password_confirm">Confirm Password</label>
                <input type="password" id="password_confirm" name="password_confirm" required>

                <button type="submit">Register</button>
            </fieldset>
        </form>
        <p>Already have an account? <a href="index.php?action=login">Login</a></p>
    </section>
</main>

<?php include 'footer.php'; ?>
