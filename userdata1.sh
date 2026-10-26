#!/bin/bash

apt-get update -y
apt-get install -y apache2

systemctl enable --now apache2

cat <<'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform Cloud | Server 2</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
            color: #f8fafc;
            background:
                radial-gradient(circle at top left, #047857, transparent 40%),
                radial-gradient(circle at bottom right, #0e7490, transparent 40%),
                #0f172a;
        }

        .container {
            width: 100%;
            max-width: 850px;
            text-align: center;
        }

        .badge {
            display: inline-block;
            padding: 10px 18px;
            margin-bottom: 25px;
            border: 1px solid #10b981;
            border-radius: 50px;
            color: #6ee7b7;
            background: rgba(6, 78, 59, 0.3);
            font-size: 13px;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        .card {
            padding: 50px 30px;
            border: 1px solid rgba(255, 255, 255, 0.15);
            border-radius: 24px;
            background: rgba(255, 255, 255, 0.07);
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.35);
            backdrop-filter: blur(15px);
            animation: fadeIn 1s ease-out;
        }

        .icon {
            width: 85px;
            height: 85px;
            margin: 0 auto 25px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 22px;
            background: linear-gradient(135deg, #34d399, #2dd4bf, #38bdf8);
            font-size: 42px;
            box-shadow: 0 10px 35px rgba(45, 212, 191, 0.25);
        }

        h1 {
            margin-bottom: 20px;
            font-size: clamp(30px, 5vw, 48px);
            line-height: 1.2;
            background: linear-gradient(90deg, #6ee7b7, #67e8f9, #a7f3d0);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .subtitle {
            max-width: 650px;
            margin: 0 auto 30px;
            color: #cbd5e1;
            font-size: 17px;
            line-height: 1.8;
        }

        .status {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 30px;
            padding: 12px 18px;
            border-radius: 50px;
            background: rgba(22, 163, 74, 0.13);
            color: #86efac;
            border: 1px solid rgba(74, 222, 128, 0.3);
            font-size: 14px;
        }

        .status-dot {
            width: 9px;
            height: 9px;
            border-radius: 50%;
            background: #4ade80;
            box-shadow: 0 0 12px #4ade80;
            animation: pulse 1.8s infinite;
        }

        .features {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 12px;
            margin-bottom: 30px;
        }

        .feature {
            padding: 13px 17px;
            border: 1px solid rgba(148, 163, 184, 0.25);
            border-radius: 12px;
            color: #e2e8f0;
            background: rgba(255, 255, 255, 0.04);
            font-size: 14px;
            transition: transform 0.3s, background 0.3s;
        }

        .feature:hover {
            transform: translateY(-5px);
            background: rgba(16, 185, 129, 0.18);
        }

        .footer {
            padding-top: 22px;
            border-top: 1px solid rgba(148, 163, 184, 0.2);
            color: #94a3b8;
            font-size: 13px;
            line-height: 1.8;
        }

        .footer strong {
            color: #6ee7b7;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.45; }
        }

        @media (max-width: 600px) {
            .card {
                padding: 35px 20px;
            }

            .subtitle {
                font-size: 15px;
            }

            .features {
                flex-direction: column;
            }
        }

        @media (prefers-reduced-motion: reduce) {
            *, *::before, *::after {
                animation: none !important;
                transition: none !important;
            }
        }
    </style>
</head>

<body>
    <main class="container">

        <div class="badge">AWS Cloud Infrastructure</div>

        <section class="card">

            <div class="icon" aria-hidden="true">☁</div>

            <h1>Terraform Project</h1>

            <p class="subtitle">
                Welcome to the second web server in my cloud project.
                This application runs on Amazon EC2 and is configured
                through Terraform Infrastructure as Code.
            </p>

            <div class="status">
                <span class="status-dot"></span>
                Server 2 — Web Service
            </div>

            <div class="features">
                <div class="feature">☁ AWS EC2</div>
                <div class="feature">⚙ Terraform IaC</div>
                <div class="feature">🌐 Apache Web Server</div>
                <div class="feature">🔒 AWS VPC</div>
                <div class="feature">🚀 Automated Deployment</div>
            </div>

            <div class="footer">
                Designed &amp; Deployed with <strong>AWS + Terraform</strong><br>
                Infrastructure as Code | Cloud Computing
            </div>

        </section>
    </main>
</body>
</html>
EOF



# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2