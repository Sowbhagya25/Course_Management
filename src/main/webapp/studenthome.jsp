<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Student Dashboard </title>
    <link rel="stylesheet" href="style1.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
</head>
<body>
<div class="container">
    <nav>
        <ul>
            <li><a href="#" class = "logo">
                <img src="images/logo.png" alt="">
                <span class="nav-item"> DashBoard</span>
            </a></li>
            <li><a href="#">
                <i class="fas fa-home"></i>
                <span class="nav-item">Home</span>
            </a></li>
            <li><a href="viewstudent">
                <i class="fas fa-user"></i>
                <span class="nav-item">Profile</span>
            </a></li>
            <li><a href="file.jsp">
                <i class="fas fa-tasks"></i>
                <span class="nav-item">Tasks</span>
            </a></li>
            <li><a href="schangepwd.jsp">
                <i class="fas fa-cog"></i>
                <span class="nav-item">Settings</span>
            </a></li>
            <li><a href="feedback">
                <i class="fas fa-question-circle"></i>
                <span class="nav-item">Feedback</span>
            </a></li>
            <li><a href="contactus.jsp">
                <i class="fas fa-question-circle"></i>
                <span class="nav-item">Help</span>
            </a></li>
            
            <li><a href="login.jsp" class=""logout>
                <i class="fas fa-sign-out-alt"></i>
                <span class="nav-item">Logout</span>
            </a></li>
        </ul>
    </nav>
    <section class="main">
        <div class="main-top">
            <h1>Skills</h1>
            <i class="fas fa-user-cog"></i>
        </div>
        <div class="main-skills">
            <div class="main-skills">
                <div class="card">
                    <i class="fas fa-laptop-code"></i>
                    <h3>Data Science</h3>
                    <p>Join Over 200 Students.</p>
                    <button onclick="window.location.href='https://www.simplilearn.com/tutorials/data-science-tutorial/what-is-data-science';">Get Started</button>

                </div>
                <div class="card">
                    <i class="fas fa-laptop-code"></i>
                    <h3>AI & ML</h3>
                    <p>Join Over 250 Students.</p>
                    <button onclick="window.location.href='https://www.javatpoint.com/artificial-intelligence-tutorial';">Get Started</button>
                </div>
                <div class="card">
                    <i class="fas fa-laptop-code"></i>
                    <h3>Cloud Computing</h3>
                    <p>Join Over 220 Students.</p>
                    <button onclick="window.location.href='https://www.electronics-notes.com/articles/connectivity/cloud-computing/what-is-the-cloud.php#:~:text=Cloud%20computing%20uses%20servers%20that,office%20or%20general%20productivity%20software';">Get Started</button>
                </div>
                <div class="card">
                    <i class="fas fa-laptop-code"></i>
                    <h3>Devops and Gaming</h3>
                    <p>Join Over 170 Students.</p>
                    <button onclick="window.location.href='https://aws.amazon.com/devops/what-is-devops/';">Get Started</button>
                </div>
                <div class="card">
                    <i class="fas fa-laptop-code"></i>
                    <h3>Cyber Security</h3>
                    <p>Join Over 190 Students.</p>
                    <button onclick="window.location.href='https://www.simplilearn.com/learn-cyber-security-basics-skillup?utm_campaign=Skillup-CyberSecurity&utm_medium=DescriptionFirstFold&utm_source=youtube';">Get Started</button>
                </div>
            </div>
            </div>
            <div>
            <section class="main-course">
                <h1>My courses</h1>
                <div class="course-box">
                    <ul>
                        <li class="active">In progress</li>
                        <li>explore</li>
                        <li>incoming</li>
                        <li>finished</li>
                    </ul>
                    <div class="course">
                        <div class="box">
                            <h3>HTML</h3>
                            <p>80% - progress</p>
                            <button onclick="window.location.href='https://html.com/';">continue</button>
                            <i class="fab fa-html5 html"></i>
                        </div>
                        <div class="box">
                            <h3>CSS</h3>
                            <p>80% - progress</p>
                            <button onclick="window.location.href='https://www.slideshare.net/santhamani/css-complete-notes';">continue</button>
                            <i class="fab fa-css3-alt css"></i>
                        </div>
                        <div class="box">
                            <h3>JavaScript</h3>
                            <p>80% - progress</p>
                           <button onclick="window.location.href='https://wesbos.com/javascript';">continue</button>
                            <i class="fab fa-js-square js"></i>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </section>
</div>
</body>
</html>



    