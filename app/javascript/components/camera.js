const addphoto = document.getElementById("add-photo");
console.log(addphoto)
const camera = document.querySelector(".camera");

if (camera) {
  camera.addEventListener("click", function(){
    console.log('titi')
    addphoto.click();
  });
}

if (addphoto) {
  addphoto.onchange = function (){
    document.getElementById('theSubmitButton').click();
  };
}


