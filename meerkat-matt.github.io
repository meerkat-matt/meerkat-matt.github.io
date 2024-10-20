<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Good Luck Layla!</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #ffccff, #ff66b2);
            color: #fff;
            text-align: center;
            padding: 50px;
            margin: 0;
            position: relative;
            overflow: hidden;
        }
        h1 {
            font-size: 3.5em;
            color: #ff4d94;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        p {
            font-size: 1.5em;
            margin: 20px 0;
            line-height: 1.5;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }
        .button {
            background-color: #ff4d94;
            color: white;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1.2em;
            transition: background-color 0.3s;
            display: inline-block;
            margin-top: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
        .button:hover {
            background-color: #ff1a75;
        }
        .confetti {
            position: absolute;
            width: 10px;
            height: 10px;
            pointer-events: none;
            opacity: 0.8;
            animation: fall linear forwards;
        }
        @keyframes fall {
            0% {
                transform: translateY(-100vh);
                opacity: 1;
            }
            100% {
                transform: translateY(100vh);
                opacity: 0;
            }
        }
        .footer {
            margin-top: 50px;
            font-size: 1.2em;
            color: #f0f0f0;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <h1>Good Luck on Your Exam, Layla!</h1>
    <p>You've worked hard, and you’re going to do great!</p>
    <p>Believe in yourself and give it your best!</p>
    <a href="#" class="button" id="confetti-button">You've Got This!</a>

    <div class="footer">✨ Wishing you all the success and happiness! ✨</div>

    <script>
        const button = document.getElementById('confetti-button');

        button.addEventListener('click', () => {
            for (let i = 0; i < 150; i++) { // Increased confetti count
                createConfetti();
            }
        });

        function createConfetti() {
            const confettiPiece = document.createElement('div');
            confettiPiece.className = 'confetti';
            confettiPiece.style.backgroundColor = getRandomColor();
            confettiPiece.style.left = Math.random() * 100 + 'vw'; // Random horizontal position
            confettiPiece.style.animationDuration = (Math.random() * 1 + 1) + 's'; // Random falling speed
            document.body.appendChild(confettiPiece);

            // Remove the confetti piece after it falls
            confettiPiece.addEventListener('animationend', () => {
                confettiPiece.remove();
            });
        }

        function getRandomColor() {
            const colors = [
                '#ff4d94', '#ff1a75', '#ff99cc', '#ffb3e6', '#ffccff',
                '#ffc107', '#ff5722', '#4caf50', '#2196f3', '#673ab7',
                '#3f51b5', '#ff9800', '#ffeb3b', '#009688', '#795548'
            ];
            return colors[Math.floor(Math.random() * colors.length)];
        }
    </script>
</body>
</html>

