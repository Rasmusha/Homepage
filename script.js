var body = document.querySelector('body');
const navbarMenu = document.querySelector('#header');
const hamburgerMenu = document.querySelector('#header .toggle');

hamburgerMenu.addEventListener('click', function() {
    hamburgerMenu.classList.toggle('active');
    navbarMenu.classList.toggle('active');
    body.classList.toggle('open');
    ariaExpanded();
}) 

function ariaExpanded() {
    const UL = document.querySelector('#expanded');
    const Expanded = UL.getAttribute('aria-expanded');

    if(Expanded === 'false') {
        UL.setAttribute('aria-expanded', 'true');
    } else {
        UL.setAttribute('aria-expanded', 'false');
    }
}

const dropDowns = Array.from(document.querySelectorAll('header .dropdown'));
for(const item of dropDowns) {
    const onClick = () => {
        item.classList.toggle('active');
    };
    item.addEventListener('click', onClick);
}