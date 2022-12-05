
<script>
	window.sr = ScrollReveal();

  sr.reveal('.navbar', {
	duration: 1000,
	origin: 'bottom'
  });

  sr.reveal('.aprende', {
	duration: 1000,
	origin: 'top',
	distance: '300px'
  });

  sr.reveal('.portada', {
	duration: 1500,
	origin: 'left',
	distance: '300px'
  });
  sr.reveal('.entrada', {
	duration: 1500,
	origin: 'right',
	distance: '300px',
	viewFactor: 0.2
  });

  sr.reveal('.xd', {
	duration: 2000,
	origin: 'bottom'
  });

  sr.reveal('#testimonial', {
	duration: 2000,
	origin: 'left',
	distance: '300px',
	viewFactor: 0.2
  });

  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
	anchor.addEventListener('click', function (e) {
	  e.preventDefault();

	  document.querySelector(this.getAttribute('href')).scrollIntoView({
		behavior: 'smooth'
	  });
	});
  });
  </script>