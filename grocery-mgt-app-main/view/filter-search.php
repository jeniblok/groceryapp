<div id="alphaFilter">
  <span onclick="filterByLetter('all')">All</span>
  <?php foreach (range('A', 'Z') as $char): ?>
    <span onclick="filterByLetter('<?= $char ?>')"><?= $char ?></span>
  <?php endforeach; ?>
</div>

<div id="searchBar">
  <input
    type="text"
    id="searchInput"
    placeholder="Search for grocery item..."
    oninput="filterBySearch()"
  >
</div>

<script>
function filterByLetter(letter) {
  const rows = document.querySelectorAll("tbody tr");
  const letters = document.querySelectorAll("#alphaFilter span");

  rows.forEach(row => {
    const itemCell = row.querySelector(".grocery-item");
    const name = itemCell?.textContent?.trim().toUpperCase();

    row.style.display = (letter === 'all' || name.startsWith(letter)) ? "" : "none";
  });

  letters.forEach(el => el.classList.remove("active"));
  const target = Array.from(letters).find(el => el.textContent.toUpperCase() === letter.toUpperCase());
  if (target) target.classList.add("active");
}

function filterBySearch() {
  const query = document.getElementById("searchInput").value.toLowerCase();
  const rows = document.querySelectorAll("tbody tr");

  rows.forEach(row => {
    const itemCell = row.querySelector(".grocery-item");
    const itemText = itemCell?.textContent?.toLowerCase() || "";
    row.style.display = itemText.includes(query) ? "" : "none";
  });
}
</script>