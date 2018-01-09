const addphoto = document.getElementById("picture_photo");
addphoto.type = "file";

document.getElementById("camera").addEventListener("click", function(){
  console.log('titi')
  addphoto.click();
});
