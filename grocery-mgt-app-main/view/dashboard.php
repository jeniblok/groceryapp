<?php 
$activePage = 'dashboard';
include 'header.php'; 
include 'nav.php'; 
usort($groceries, function($a, $b) {
    return strcasecmp($a['name'], $b['name']);
});
?>


<main>
    <section class="dashboard-container">

</div>
    <?php include 'filter-search.php'; ?>
        <h2>Available Grocery Items</h2>

        <?php if (empty($groceries)) : ?>
            <p class="empty-message">No grocery items found in the store.</p>
        <?php else: ?>
            <table>

                <thead>
                    <tr><th>Name</th><th>Add to Cart</th></tr>
                </thead>
                <tbody>
                    <?php foreach ($groceries as $grocery): ?>
                        <tr>
                            <td class="grocery-item" data-name="<?= $grocery['name'] ?>">
    <?= htmlspecialchars($grocery['name']) ?>
</td>
                            <td>
                                <form action="index.php?action=add_to_cart&id=<?= $grocery['id'] ?>" method="post" style="display:inline;">
                                    <input 
                                        type="number" 
                                        name="quantity" 
                                        min="1" 
                                        value="1" 
                                        required 
                                        style="width: 60px; padding: 4px; font-size: 14px; display: inline-block;"
                                    >
                                    <button type="submit" class="action-btn add">➕ Add to Cart</button>
                                </form>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php endif; ?>
    </section>
</main>

<?php include 'footer.php'; ?>
