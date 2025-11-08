const loginTab = document.getElementById('btnLoginTab');
const loginForm = document.getElementById('loginForm');

function showLogin() {
    if (loginTab) loginTab.classList.add('active');
    if (loginForm) loginForm.classList.add('active');
}

showLogin();

if (loginTab) loginTab.onclick = showLogin;

const menuToggle = document.getElementById('menu-toggle');
const nav = document.querySelector('.nav');
menuToggle.addEventListener('click', () => {
    nav.classList.toggle('active');
});