function Refresh() {
  const photo1 = document.getElementById('photoLeftTop');
  const photo2 = document.getElementById('photoLeftBottom');
  const photo3 = document.getElementById('photoRightBottom');
  const photo4 = document.getElementById('photoRightTop');
  const images = ["gesam5npzcvlut75jmsy", "yjtvg9jfoagabaqa9rof", "uoait4anm4lxcdw95ipw", "ozvy2kienneshuvwynkr", "Qui_sommesnous_wypefc", "hgs6ogfboxxmao9h7cgd", "gnats7ztamxddutokxvd", "h3onlddermzjkth6xh73", "xk9sevgy4ygicz9ivmuu", "fczqdgxbdfk6zrgkdkgt"];
  const randomImage1 = images[Math.floor(Math.random()*images.length)];
  const randomImage2 = images[Math.floor(Math.random()*images.length)];
  const randomImage3 = images[Math.floor(Math.random()*images.length)];
  const randomImage4 = images[Math.floor(Math.random()*images.length)];

  if (photo1) {
    photo1.style.backgroundImage = `url("http://res.cloudinary.com/dbhmjj2co/image/upload/v1517426258/${randomImage1}.jpg")`
  }
  setTimeout(function()
  {
    if (photo2) {
      photo2.style.backgroundImage = `url("http://res.cloudinary.com/dbhmjj2co/image/upload/v1517426258/${randomImage1}.jpg")`
    }
  }, 10000);
  setTimeout(function()
  {
    if (photo3) {
      photo3.style.backgroundImage = `url("http://res.cloudinary.com/dbhmjj2co/image/upload/v1517426258/${randomImage1}.jpg")`
    }
  }, 30000);
  setTimeout(function()
  {
    if (photo4) {
      photo4.style.backgroundImage = `url("http://res.cloudinary.com/dbhmjj2co/image/upload/v1517426258/${randomImage1}.jpg")`
    }
  }, 20000);
}
setInterval(function() {
   Refresh();
}, 10000)

export { Refresh }
















