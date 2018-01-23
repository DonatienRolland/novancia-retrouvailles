const addphoto = document.getElementById("add-photo");
const camera = document.querySelector(".camera");

if (camera) {
  camera.addEventListener("click", function(){
    console.log('titi')
    addphoto.click();
  });
}

if (addphoto) {
  addphoto.onchange = function (){
    document.querySelector('.theSubmitButton').click();
  };
}


