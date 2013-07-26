$( ->
	windowPath = window.location.pathname

	paths = ['/connect', '/prepare', '/about']

	if windowPath == '/home' || windowPath == '/'
		$('[href="/home"]').parent('h1').addClass('active')
	else if windowPath in ['/prepare', '/stories', '/things']
		$('[href="/prepare"]').parent('li').addClass('active')
	else
		_(paths).each (path) -> if path == windowPath then $('[href="' + path + '"]').parent('li').addClass('active')
)