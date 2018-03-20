
function Refresh() {
  var photo = document.getElementById('all-photos-lg')
  console.log(photo)
  var myVar = setInterval(photo, 3000);
  console.log(myVar)
}

export { Refresh }
