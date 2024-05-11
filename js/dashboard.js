let wishList = [];

function addToWishList(element) {
  const row = element.closest("tr");
  const theme = row.querySelector("td:nth-child(2)").textContent;
  const professor = row.querySelector("td:nth-child(5)").textContent;
  const description = row.querySelector("td:nth-child(3)").textContent;

  const item = {
    theme,
    professor,
    description,
  };

  wishList.push(item);
  saveWishItemToDatabase(item);

  alert("Item added to Wish sheet");
  populateWishListTable();
}

function saveWishItemToDatabase(item) {
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "includes/save_wish_item.php", true);
  xhr.setRequestHeader("Content-Type", "application/json");
  xhr.onreadystatechange = function () {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        console.log("Wish item saved successfully.");
      } else {
        console.error("Error saving wish item.");
      }
    }
  };
  xhr.send(JSON.stringify(item));
}

function populateWishListTable() {
  const tableBody = document.getElementById("wishListTable");
  tableBody.innerHTML = "";

  wishList.forEach((item, index) => {
    const row = document.createElement("tr");

    const themeCell = document.createElement("td");
    themeCell.textContent = item.theme;
    row.appendChild(themeCell);

    const professorCell = document.createElement("td");
    professorCell.textContent = item.professor;
    row.appendChild(professorCell);

    const descriptionCell = document.createElement("td");
    descriptionCell.textContent = item.description;
    row.appendChild(descriptionCell);

    const priorityCell = document.createElement("td");
    priorityCell.textContent = index + 1;
    row.appendChild(priorityCell);

    const operationCell = document.createElement("td");
    const deleteButton = document.createElement("button");
    deleteButton.innerHTML = "&#128465;"; // رمز القمامة
    deleteButton.addEventListener("click", () => {
      deleteFromWishList(index);
    });
    operationCell.appendChild(deleteButton);
    row.appendChild(operationCell);

    tableBody.appendChild(row);
  });
}

function deleteFromWishList(index) {
  var confirmation = confirm("هل أنت متأكد أنك تريد حذف هذا الموضوع؟");
  if (confirmation) {
    var deletedItem = wishList.splice(index, 1)[0];
    populateWishListTable();
    deleteFromDatabase(deletedItem.theme, deletedItem.professor, deletedItem.description);
  }
}

function deleteFromDatabase(theme, professor, description) {
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "delete_wish_item.php", true);
  xhr.setRequestHeader("Content-Type", "application/json");
  xhr.onreadystatechange = function() {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        console.log("Wish item deleted from database");
      } else {
        console.error("Error deleting wish item from database");
      }
    }
  };
  xhr.send(JSON.stringify({ theme: theme, professor: professor, description: description }));
}

function searchTopics(keyword) {
  var table = document.querySelector(".home-section#topics .-table");
  var rows = table.getElementsByTagName("tr");
  var originalDisplay = [];

  for (var i = 0; i < rows.length; i++) {
    originalDisplay[i] = rows[i].style.display;
  }

  var found = false;
  for (var i = 0; i < rows.length; i++) {
    var cells = rows[i].getElementsByTagName("td");
    var rowFound = false;
    for (var j = 0; j < cells.length; j++) {
      var cellText = cells[j].textContent || cells[j].innerText;
      if (cellText.toUpperCase().includes(keyword.toUpperCase())) {
        rows[i].style.display = "";
        rowFound = true;
        found = true;
        break;
      }
    }
    if (!rowFound) {
      rows[i].style.display = "none";
    }
  }

  if (!found) {
    alert("No matching topics found.");
    for (var i = 0; i < rows.length; i++) {
      rows[i].style.display = originalDisplay[i];
    }
  }
}

function showPFEList() {
  document.querySelector(".home-section#topics").style.display = "block";
  document.querySelector(".home-section#wishSheetSection").style.display =
    "none";
}

function toggleWishSheet() {
  document.querySelector(".home-section#topics").style.display = "none";
  document.querySelector(".home-section#wishSheetSection").style.display =
    "block";
}

function showSearchBox() {
  document.getElementById("searchModal").style.display = "block";
}

function hideSearchBox() {
  document.getElementById("searchModal").style.display = "none";
}
