let container = document.getElementById('container');
let header = document.querySelector('.nav');

window.addEventListener('scroll', event => {
	let scrollY = this.scrollY;

	if (scrollY != 0) {
		header.classList.add('nav_active');
	} else {
		header.classList.remove('nav_active');
	}
});
