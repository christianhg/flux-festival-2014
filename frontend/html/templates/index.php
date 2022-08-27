<!doctype html>
<html ng-app="flux" lang="da-DK">
<head>
	<base href="/">
	<meta charset="utf-8">
	<title>Flux Festival</title>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<meta name="author" content="Flux Festival">
	<meta name="description" content="Alternativ musikfestival i Aarhus">
	<link rel="canonical" href="http://fluxfestival.dk">
	
	<link rel="stylesheet" href="css/styles.min.css">
	<link rel="shortcut icon" href="favicon.ico">
</head>
<body>
	<div id="page">
		<div ui-view="header"></div>
		<div id="container">
			<div class="container" ui-view></div>
		</div>
		<div ui-view="footer"></div>
	</div>
	<script src="js/app.min.js"></script>
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');ga('create', 'UA-35381607-2', 'auto');ga('send', 'pageview');
	</script>
</body>
</html>
