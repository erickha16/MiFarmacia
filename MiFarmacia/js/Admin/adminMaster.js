const toggleButton = document.querySelector("#toggle-btn");

toggleButton.addEventListener("click", function () {
    document.querySelector("#sidebar").classList.toggle("expand");
});