<?php 
$activePage = 'cart';
include 'header.php'; 
include 'nav.php';
?>

<main>
    <section class="cart-container">
        <h2>Your Cart</h2>

        <?php if (empty($_SESSION['cart13'])) : ?>
            <p class="empty-message">Your cart is empty. Add items from the grocery list.</p>
        <?php else: ?>
            <table>
                <thead>
                    <tr><th>Name</th><th>Quantity</th><th>Actions</th></tr>
                </thead>
                <tbody>
                    <?php foreach ($_SESSION['cart13'] as $index => $item): ?>
                        <tr>
                            <form action="index.php?action=update_cart_item" method="post">
                                <td><?= htmlspecialchars($item['name']) ?></td>
                                <td>
                                    <input type="number" name="quantity" value="<?= htmlspecialchars($item['quantity']) ?>" min="1" required>
                                    <input type="hidden" name="index" value="<?= $index ?>">
                                </td>
                                <td>
                                    <button type="submit" class="action-btn edit">✏️ Update</button>
                                    <a href="index.php?action=remove_cart_item&index=<?= $index ?>" class="action-btn delete" onclick="return confirm('Remove this item?')">🗑️ Remove</a>
                                </td>
                            </form>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php endif; ?>
    </section>
</main>

<?php include 'footer.php'; ?>