document.querySelectorAll('.acordeon').forEach(item => {
    item.addEventListener('mouseover', () => {
        item.querySelector('.contenido-acordeon').style.maxHeight = '600px';
        item.querySelector('.contenido-acordeon').style.padding = '15px 0px';
    });

    item.addEventListener('mouseout', () => {
        item.querySelector('.contenido-acordeon').style.maxHeight = '0px';
        item.querySelector('.contenido-acordeon').style.padding = '0px';
    });
});
document.addEventListener('DOMContentLoaded', function() {
    var dropdowns = document.querySelectorAll('.dropdown .dropbtn');
    var menuHamburguesa = document.getElementById('menu-hamburguesa');
    var menuLateral = document.getElementById('menu-lateral');

    dropdowns.forEach(function(dropbtn) {
        dropbtn.addEventListener('click', function(event) {
            event.preventDefault();
            var dropdown = this.parentElement;
            dropdown.classList.toggle('active');
            
            // Close other dropdowns
            document.querySelectorAll('.dropdown').forEach(function(otherDropdown) {
                if (otherDropdown !== dropdown) {
                    otherDropdown.classList.remove('active');
                }
            });
        });
    });

    // Close dropdowns when clicking outside
    window.addEventListener('click', function(event) {
        if (!event.target.matches('.dropbtn')) {
            document.querySelectorAll('.dropdown').forEach(function(dropdown) {
                dropdown.classList.remove('active');
            });
        }
    });

    menuHamburguesa.addEventListener('click', function() {
        menuLateral.style.width = menuLateral.style.width === '250px' ? '0' : '250px';
    });
});
