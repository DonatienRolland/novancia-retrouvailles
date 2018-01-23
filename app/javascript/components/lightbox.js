var vignettes = document.getElementsByClassName("lightbox");
for (var i=0; i<vignettes.length; i++){
  vignettes[i].addEventListener('click', function(e){
    e.preventDefault();
      lightbox(e.currentTarget);
  });
}

function lightbox(lien){
  var imageGrand = new Image(),
  lightbox = document.getElementById('lightbox');
  imageGrand.addEventListener('load', function(){
    lightbox.innerHTML = "";
    lightbox.appendChild(imageGrand);
  });
  imageGrand.src = lien.href;
  lightbox.style.display = "block";
}


document.getElementById("lightbox").addEventListener("click", function(e){
  e.currentTarget.style.display ="none";
});
