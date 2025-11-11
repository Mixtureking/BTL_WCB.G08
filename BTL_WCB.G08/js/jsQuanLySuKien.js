document.addEventListener("DOMContentLoaded", function () {
    const toggle = document.getElementById("menu-toggle");
    const nav = document.querySelector(".nav");

    toggle.addEventListener("click", function () {
        nav.classList.toggle("active"); 
});