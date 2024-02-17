<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoHub</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e0e0e0; /* Soft gray background */
            color: #333; /* Dark text for readability */
            text-align: center;
            padding-top: 50px;
        }
        .button {
            padding: 10px 15px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            color: white; /* White text */
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            opacity: 0.9;
        }
        .ip { background-color: #4CAF50; } /* Green */
        .date { background-color: #2196F3; } /* Blue */
        .weather { background-color: #f44336; } /* Red */
        #result {
            margin-top: 20px;
            font-size: 20px;
        }
    </style>
</head>
<body>

<h2>InfoHub - Simple Java WebApp</h2>
<p>Click the buttons below for information</p>

<button class="button ip" onclick="getMyIP()">My IP Address</button>
<button class="button date" onclick="getCurrentDate()">Date</button>
<button class="button weather" onclick="redirectToWeather()">Weather</button>

<div id="result"></div>

<script>
    function getMyIP() {
        fetch('https://api.ipify.org?format=json')
            .then(response => response.json())
            .then(data => {
                document.getElementById('result').textContent = 'Your IP Address: ' + data.ip;
            })
            .catch(error => {
                console.error('Error fetching IP:', error);
                document.getElementById('result').textContent = 'Error fetching IP';
            });
    }

    function getCurrentDate() {
        const now = new Date();
        document.getElementById('result').textContent = 'Current Date: ' + now.toDateString();
    }

    function redirectToWeather() {
        window.location.href = 'https://weather.tomorrow.io/';
    }
</script>

</body>
</html>

