const menuToggle = document.getElementById('menu-toggle');
const nav = document.querySelector('.nav');
menuToggle.addEventListener('click', () => {
    nav.classList.toggle('active');
});

//--------phần BANNER---------------
let imgPosition = document.querySelectorAll(".aspect-ratio-169 img");
let imgContainer = document.querySelector(".aspect-ratio-169");
let prev = document.querySelector(".prev");
let next = document.querySelector(".next");
let dotItem = document.querySelectorAll(".dot");
let index = 0;

// Khởi tạo
imgPosition.forEach(function (image, index) {
    image.style.left = index * 100 + "%";
    // nhấn vào dot sẽ sang ảnh tương ứng
    dotItem[index].addEventListener("click", function () {
        banner(index);
    });
});

// Chuyển ảnh kế tiếp
function imgSlide() {
    index++;
    if (index >= imgPosition.length) {
        index = 0;// quay lại ban đầu nếu vượt quá
    }
    banner(index);
}

// Nút trái: lùi 1 ảnh
prev.addEventListener("click", function () {
    index--;
    if (index < 0) {
        index = imgPosition.length - 1;
    }
    banner(index);
});
// Nút phải: tiến 1 ảnh
next.addEventListener("click", imgSlide);

// Hàm chuyển ảnh
function banner(index) {
    imgContainer.style.left = "-" + index * 100 + "%";
    // cập nhât dot đang active
    let dotActive = document.querySelector(".active");
    dotItem.forEach(function (dot) {
        dot.classList.remove("active");
    });
    dotItem[index].classList.add("active");
}
setInterval(imgSlide, 5000);// chuyển slide sau mỗi 5s