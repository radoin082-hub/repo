<?php
require_once('config/db.php');

// Start the session
session_start();

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    // Redirect the user to the login page if not logged in
    header("Location: login.php");
    exit;
}

// Fetch topics from the database
$sql = "SELECT * FROM topic";
$result = mysqli_query($conn, $sql);
$topics = mysqli_fetch_all($result, MYSQLI_ASSOC);

// Fetch wish sheet data from the database for the logged-in user
$user_email = $_SESSION['email'];
$sql_wishsheet = "SELECT * FROM wishsheet WHERE email = '$user_email'";
$result_wishsheet = mysqli_query($conn, $sql_wishsheet);
$whishsheet = mysqli_fetch_all($result_wishsheet, MYSQLI_ASSOC);

// Check if data was fetched
if (!$topics) {
    throw new Exception("No data was fetched from the database.");
}
?>

<!-- HTML code remains the same -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Code</title>
  <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
  <link rel="stylesheet" href="css/topics-style.css">
</head>
<body>
<div class="sidebar">
  <div class="logo-details">
    <div class="logo_name"> Options </div>
    <i class='bx bx-menu' id="btn"></i>
  </div>
  <ul class="nav-list">
    <li>
      <button onclick="showSearchBox()"><i class='bx bx-search'></i> Search</button>
      <span class="tooltip">Search</span>
    </li>
    <li>
      <a href="#" onclick="showPFEList()">
        <i class='bx bx-list-ul'></i>
        <span class="links_name">  The Subjects</span>
      </a>
      <span class="tooltip"> The Subjects </span>
    </li>
    <li>
      <a href="#" onclick="toggleWishSheet()">
        <i class='bx bx-notepad'></i>
        <span class="links_name">Wish Sheet</span>
      </a>
      <span class="tooltip">Wish sheet</span>
    </li>
    <li>
      <a href="#">
        <i class='bx bx-check-square'></i>
        <span class="links_name"> Assignment </span>
      </a>
      <span class="tooltip"> Assignment </span>
    </li>
    <li>
      <a href="#">
        <i class='bx bx-cog'></i>
        <span class="links_name">Setting</span>
      </a>
      <span class="tooltip">Setting</span>
    </li>
    <li>
      <a href="index.php" class="back-btn">
        <i class='bx bx-arrow-back'></i>
        <span class="links_name">Back</span>
      </a>
      <span class="tooltip">Back</span>
    </li>
  </ul>
</div>
<section class="home-section" id="topics" style="display: none;">
    <div class="text">List of topics:</div>
    <p>Please Choose Your Topics In Order
       <span>&#x1F4CB;</span>
    </p>
    <table class="-table">
        <thead>
          <tr>
            <th>Id</th>
            <th>TITLE</th>
            <th>Description</th>
            <th>SPECIALITY</th>
            <th>Professor</th>
            <th>OPTION</th>
          </tr>
        </thead>
        <?php foreach ($topics as $topic): ?>
        <tr>
            <td><?php echo $topic['id']; ?></td>
            <td><?php echo $topic['title']; ?></td>
            <td><?php echo $topic['resume']; ?></td>
            <td><?php echo $topic['speciality']; ?></td>
            <td><?php echo $topic['professeur']; ?></td>
            <td>
              <?php
              // samer
               /* echo '<a href="#" onclick="addToWishList(this)" class="validate-link" style="display: none;"><i class=\'bx bx-check\'></i></a>';*/
              $displayed = $topic['isClosed']?'style="display: none;' : ' ' ;
              echo '<a href="#" onclick="addToWishList(this)" class="validate-link" ' . $displayed .'"><i class=\'bx bx-check\'></i></a>';
?>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>
</section>
<section class="home-section" id="wishSheetSection" style="display: none;">
    <div class="text">Wish Sheet</div>
    <table class="-table">
        <thead>
          <tr>
<!--            <th>Id</th>-->
            <th>TITLE</th>
            <th>Description</th>
            <th>Professor</th>
            <th>Priority</th>
            <th>Operation</th>
          </tr>
        </thead>
        <tbody id="wishListTable">
            <?php foreach ($whishsheet as $w): ?>
            <tr>
<!--              samer for testing something -->
<!--                <td>--><?php //echo $w['id']; ?><!--</td>-->
                <td><?php echo $w['theme']; ?></td>
                <td><?php echo $w['description']; ?></td>
                <td><?php echo $w['professor']; ?></td>
                <td><?php echo $w['priority']; ?></td>
                <td>
                    <a href="#" onclick="deleteFromWishList(this)"><i class='bx bx-x'></i></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</section>
<div id="searchModal" class="search-modal" style="display: none;">
  <div class="search-box">
    <input type="text" id="searchInput" placeholder="Enter search keyword...">
    <button onclick="searchTopics(document.getElementById('searchInput').value)">Search</button>
    <button onclick="hideSearchBox()">Close</button>
  </div>
</div>
<script src="js/dashboard.js"></script>
</body>
</html>