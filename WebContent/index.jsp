<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Server-Sent Events Servlet Example</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>

<body>
    <div class="container">
      <div class="header clearfix">
        <h3 class="text-muted">Server-Sent Events Servlet example</h3>
      </div>

      <div class="jumbotron">
        <h1>Update Date</h1>
        <p><button class="btn btn-lg btn-success" onclick="start()">Start</button></p>
      </div>

    <p>Time: <span id="time"></span></p>

    </div>

	<script>
	function start() {
		var eventSource = new EventSource("AutoUpdate");
		eventSource.onmessage = function(event) {
			document.getElementById('time').innerHTML = event.data;
		};
	}
	</script>
</body>
</html>