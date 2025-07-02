<?php
$activePage = 'login';
include 'header.php';  
include 'nav.php';     
?>

<main>
    <section class="form-container">
        <form action="index.php?action=login" method="post">
            <fieldset>
                <legend>🔐 Log In</legend>

                <?php if (!empty($error)) : ?>
                    <div class="error-message"><?= htmlspecialchars($error) ?></div>
                <?php endif; ?>

                <label for="username">Username</label>
                <input type="text" id="username" name="username" required autofocus>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
                <input type="text" name="username" placeholder="Username" required>
                
                <label><input type="checkbox" name="remember"> Remember Me</label> 
        
                <button type="submit">Log In</button>
            </fieldset>
        </form>
        <p>Don't have an account? <a href="index.php?action=register">Register</a></p>
    </section>
</main>

<?php include 'footer.php';   ?>
