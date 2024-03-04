// toggle icon navbar
let menuIcon = document.querySelector('#menu-icon');
let navbar = document.querySelector('.navbar');

menuIcon.onclick = () => {
    menuIcon.classList.toggle('bx-x');
    navbar.classList.toggle('active');

}

// scroll sections
let  sections = document.querySelectorAll('section');
let visited = new Array(sections.length);
let navLinks = document.querySelectorAll('header nav a');

window.onscroll = () => {
    sections.forEach(sec => {
        let top = window.scrollY;
        let offset = sec.offsetTop - 100;
        let height = sec.offsetHeight;
        let id = sec.getAttribute('id');

        if(top >= offset && top < offset + height) {
            // active navbar links
            navLinks.forEach(links => {
                links.classList.remove('active');
                document.querySelector('header nav a[href*=' + id + ']').classList.add('active');
            });
            // active sections for animation on scroll
            sec.classList.add('show-animate');
        }
        // if want to use animation that repeats on scroll use this
        else {
            sec.classList.remove('show-animate');

        }
    });
    // sticky header
    let header = document.querySelector('header');

    header.classList.toggle('sticky', window.scrollY > 100);

    // remove toggle icon and navbar when click navbar links (scroll)
    menuIcon.classList.remove('bx-x');
    navbar.classList.remove('active');

    // animation footer on scroll
    let footer = document.querySelector('footer');

    footer.classList.toggle('show-animate',this.innerHeight + this.scrollY >= document.scrollingElement.scrollHeight);
    
}

const roles = ["Student", "FrontEnd Developer", "BackEnd Developer", "App Developer"];
let currentRoleIndex = 0;

function typeRole() {
  const roleElement = document.getElementById("role");
  const currentRole = roles[currentRoleIndex];

  let charIndex = 0;
  const typingInterval = setInterval(() => {
    roleElement.textContent = currentRole.slice(0, charIndex + 1);
    charIndex++;

    if (charIndex === currentRole.length) {
      clearInterval(typingInterval);
      setTimeout(eraseRole, 1000); 
    }
  }, 100);
}

function eraseRole() {
  const roleElement = document.getElementById("role");
  let charIndex = roles[currentRoleIndex].length;

  const erasingInterval = setInterval(() => {
    roleElement.textContent = roles[currentRoleIndex].slice(0, charIndex - 1);
    charIndex--;

    if (charIndex === 0) {
      clearInterval(erasingInterval);
      currentRoleIndex = (currentRoleIndex + 1) % roles.length;
      setTimeout(typeRole, 500); 
    }
  }, 100);
}


typeRole();
