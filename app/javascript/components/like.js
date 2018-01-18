function likeUnlike() {
  document.addEventListener('DOMContentLoaded', () => {
    const likeUnlike = document.getElementById("counter");
    console.log(likeUnlike)
    if (likeUnlike) {
      likeUnlike.forEach(category => {
        category.addEventListener("click", (event) => {
          event.target.classList.toggle('active');
        })
      });
    }
  })
}

export { likeUnlike }
