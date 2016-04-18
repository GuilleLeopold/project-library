function changeColor(){
  var table = document.getElementById("user-books");
  for (var i = 0, row; row = table.rows[i]; i++) {
    if(row.cells[3].innerText == "Aproved"){
      row.cells[3].style.color = "green";
    } else if(row.cells[3].innerText == "Denied"){
      row.cells[3].style.color = "red";
    } else {
      row.cells[3].style.color = "grey";
    }
  }
}
