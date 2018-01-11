const addphoto = document.getElementById("add-photo");
// addphoto.type = "file";

document.getElementById("camera").addEventListener("click", function(){
  console.log('titi')
  addphoto.click();
});

document.getElementById("add-photo").onchange = function (){
  document.getElementById('myForm').submit();
};

