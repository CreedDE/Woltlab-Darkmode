<li class="jsOnly">
	<a href="#" class="jsTooltip darkmodeToggle" title="{lang}wcf.creed-design.darkmode{/lang}" id="darktoggle">
		<span class="icon icon16 fa-moon-o"></span>
		<span class="invisible">{lang}wcf.creed-design.darkmode{/lang}</span>
	</a>
</li>

<script data-relocate="true">
	(function() {
		var dntoggle = document.querySelector('#darktoggle');
		var theme = document.documentElement;

		theme.classList.add('theme--default');

		dntoggle.addEventListener('click', function() {
			trans();
			let header = theme.classList.toggle('theme--dark');
			localStorage.setItem('darkTheme', header);
		});

		if (JSON.parse(localStorage.getItem('darkTheme'))) {
			theme.classList.add('theme--dark');
			
		}

		let trans = () => {
			theme.classList.add('transition');
			window.setTimeout(() => {
				theme.classList.remove('transition');
			}, 1000);
		}
	})();
</script>
