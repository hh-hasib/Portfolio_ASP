<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio.aspx.cs" Inherits="Portfolio.portfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Portfolio</title>

    <link rel="stylesheet" href="css/style.css" />

    <!-- box icons -->
    <link
        href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
        rel="stylesheet" />
</head>
<body>
    <!-- header design -->
    <header class="header">
        <a href="#" class="logo">Hasib.<span class="animate" style="--i: 1"></span></a>

        <div class="bx bx-menu" id="menu-icon">
            <span class="animate" style="--i: 2"></span>
        </div>

        <nav class="navbar">
            <a href="#home" class="active">Home</a>
            <a href="#about">About</a>
            <a href="#education">Education</a>
            <a href="#skills">Skills</a>
            <a href="#projects">Projects</a>
            <a href="#contact">Contact</a>
            <span class="active-nav"></span>
            <span class="animate" style="--i: 2"></span>
        </nav>
    </header>

    <!-- home section design -->

    <section class="home show-animate" id="home">
        <div class="home-content">
            <h1>Hi, I'm <span>Hasibul Hasan</span><span class="animate" style="--i: 2"></span>
            </h1>
            <!-- <div class="text-animate text-animate2">
          <h3 id="role">Student</h3>
          <span class="animate" style="--i: 3"></span>
        </div> -->
            <div class="text-animate">
                <h3 id="role" class="text-animate2"></h3>
                <span class="animate" style="--i: 3"></span>
            </div>
            <p>
                I am a passionate Computer Science and Engineering (CSE) student, immersed in the fascinating world of technology.Currently studying in Khulna University of Engineering and Technology (KUET).
          <span class="animate" style="--i: 4"></span>
            </p>

            <div class="btn-box">
                <a href="login.aspx" class="btn"><b>Admin</b></a>
                <a href="#contact" class="btn"><b>Let's Talk</b></a>
                <span class="animate" style="--i: 5"></span>
            </div>
        </div>

        <div class="home-sci">
            <a href="https://github.com/hh-hasib"><i class="bx bxl-github"></i></a>
            <a href="https://www.facebook.com/hasib050501"><i class="bx bxl-facebook"></i></a>
            <a href="#"><i class="bx bxl-instagram"></i></a>
            <span class="animate" style="--i: 6"></span>
        </div>

        <div class="home-imgHover"></div>
        <span class="animate home-img" style="--i: 7"></span>
    </section>

    <!-- about selection design -->
    <section class="about" id="about">
        <h2 class="heading">About <span>Me</span><span class="animate scroll" style="--i: 1"></span>
        </h2>

        <div class="about-img">
            <img src="images/pic.png" alt="Myself" />
            <span class="circle-spin"></span>
            <span class="animate scroll" style="--i: 2"></span>
        </div>

        <div class="about-content">
            <h3>Future Developer!<span class="animate scroll" style="--i: 3"></span></h3>
            <p>
                Greetings! I'm Hasibul Hasan, an undergraduate student pursuing Computer Science and Engineering at Khulna University of Engineering and Technology (KUET). Though my academic focus is on security, my enthusiasm extends to coding, web development, and app development. While I'm not an expert in these areas, I am passionately exploring and honing my skills. My portfolio reflects this journey, showcasing my academic endeavors and the evolving tapestry of my interests in technology. Let's embark on this exciting exploration together!
          <span class="animate scroll" style="--i: 4"></span>
            </p>

            <div class="btn-box btns">
                <a href="asset/CV.pdf" class="btn">Download CV</a>
                <span class="animate scroll" style="--i: 5"></span>
            </div>
        </div>
    </section>

    <!-- educatin section design -->
    <section class="education" id="education">
        <h2 class="heading">My <span>Journey</span><span class="animate scroll" style="--i: 1"></span>
        </h2>

        <div class="education-row">
            <div class="education-column">
                <h3 class="title">Education<span class="animate scroll" style="--i: 2"></span>
                </h3>

                <div class="education-box">
                    <div class="education-content">
                        <div class="content">
                            <div class="year">
                                <i class="bx bxs-calendar"></i>
                                <p runat="server" id="dt1">0000 - 0000</p>
                            </div>
                            <h3 runat="server" id="et1">No Degree - University</h3>
                            <p runat="server" id="e1">
                                No Degree found in Database....
                            </p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year">
                                <i class="bx bxs-calendar"></i>
                                <p runat="server" id="dt2">0000 - 0000</p>
                            </div>
                            <h3 runat="server" id="et2">No Degree - University</h3>
                            <p runat="server" id="e2">
                                No Degree found in Database....
                            </p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year">
                                <i class="bx bxs-calendar"></i>
                                <p runat="server" id="dt3">0000 - 00000</p>
                            </div>
                            <h3 runat="server" id="et3">No Degree - University</h3>
                            <p runat="server" id="e3">
                                No Degree found in Database....
                            </p>
                        </div>
                    </div>
                    <span class="animate scroll" style="--i: 3"></span>
                </div>
            </div>

            <div class="education-column">
                <h3 class="title">Achievement<span class="animate scroll" style="--i: 5"></span>
                </h3>

                <div class="education-box">
                    <div class="education-content">
                        <div class="content">
                            <div class="year">
                                <i class="bx bxs-calendar"></i>2022
                            </div>
                            <h3>SGIPC</h3>
                            <p>
                                Attended in Itra KUET Programming Contest. And My Team stood 11 among 60 team. And we got a certificate as Honorable Mention.
                            </p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year">
                                <i class="bx bxs-calendar"></i>2019 - 2020
                            </div>
                            <h3>HSC - Scholarship</h3>
                            <p>
                                I stood first in Jashore Board in my HSC Examination. Thus I got a Talentpool Scholarship.
                            </p>
                        </div>
                    </div>

                    <div class="education-content">
                        <div class="content">
                            <div class="year">
                                <i class="bx bxs-calendar"></i>2017 - 2018
                            </div>
                            <h3>SSC - Scholarship</h3>
                            <p>
                                I stood 10th place in Jashore Board in my SSC Examination. Thus I got a Talentpoll Scholarship
                            </p>
                        </div>
                    </div>
                    <span class="animate scroll" style="--i: 6"></span>
                </div>
            </div>
        </div>
    </section>

    <!-- skills section design -->
    <section class="skills" id="skills">
        <h2 class="heading">My <span>Skills</span><span class="animate scroll" style="--i: 1"></span>
        </h2>

        <div class="skills-row">
            <div class="skills-column">
                <h3 class="title">Coding Skills<span class="animate scroll" style="--i: 2"></span>
                </h3>

                <div class="skills-box">
                    <div class="skills-content">
                        <div class="progress">
                            <h3>HTML <span>90%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>CSS <span>80%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>JavaScript <span>65%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>Python <span>50%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>
                    </div>

                    <span class="animate scroll" style="--i: 3"></span>
                </div>
            </div>

            <div class="skills-column">
                <h3 class="title">Professional Skills<span
                    class="animate scroll"
                    style="--i: 5"></span>
                </h3>

                <div class="skills-box">
                    <div class="skills-content">
                        <div class="progress">
                            <h3>Web Design <span>95%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>Web Develeopment <span>65%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>App Development <span>85%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>

                        <div class="progress">
                            <h3>Graphic Design <span>50%</span></h3>
                            <div class="bar"><span></span></div>
                        </div>
                    </div>
                    <span class="animate scroll" style="--i: 6"></span>
                </div>
            </div>
        </div>
    </section>

    <!-- Project Section Design -->
    <section class="projects" id="projects">
        <h2 class="heading">My <span>Projects</span><span class="animate scroll" style="--i: 1"></span>
        </h2>
        <div class="cards">
            <div class="card red">
                <div class="details-container color-container hidden">
                    <h2 class="experience-sub-title project-title">OOP Project</h2>
                    <div class="article-container">
                        <img src="./asset/oop.jpg" alt="Project 1" class="project-img" />
                    </div>
                    <h2 class="experience-sub-title project-title">Title: Unit Converter</h2>
                    <div class="btn-container">
                        <button
                            class="project-btn"
                            onclick="location.href='https://github.com/hh-hasib/projectOOP'">
                            Github
                        </button>
                        <button
                            class="project-btn"
                            onclick="window.open('./asset/oop.jpg')">
                            Live Demo
                        </button>
                    </div>
                </div>
            </div>
            <div class="card blue">
                <div class="details-container color-container hidden">
                    <h2 class="experience-sub-title project-title">Android Application
                    </h2>
                    <div class="article-container">
                        <img src="./asset/Unit.png" alt="Project 2" class="project-img" />
                    </div>
                    <h2 class="experience-sub-title project-title">Title: UCon TOOLS</h2>
                    <div class="btn-container">
                        <button
                            class="project-btn"
                            onclick="location.href='https://github.com/hh-hasib/UnitConverter'">
                            Github
                        </button>
                        <button
                            class="project-btn"
                            onclick="window.open('./asset/app.mp4')">
                            Live Demo
                        </button>
                    </div>
                </div>
            </div>
            <div class="card blue">
                <div class="details-container color-container hidden">
                    <h2 class="experience-sub-title project-title">Android Application
                    </h2>
                    <div class="article-container">
                        <img src="./asset/weather-app.png" alt="Project 2" class="project-img" />
                    </div>
                    <h2 class="experience-sub-title project-title">Title: Weather App</h2>
                    <div class="btn-container">
                        <button
                            class="project-btn"
                            onclick="location.href='https://github.com/hh-hasib'">
                            Github
                        </button>
                        <button
                            class="project-btn"
                            onclick="window.open('./asset/weather-app.png')">
                            Live Demo
                        </button>
                    </div>
                </div>
            </div>
            <div class="card green">
                <div class="details-container color-container hidden">
                    <h2 class="experience-sub-title project-title">HTML, CSS, JS</h2>
                    <div class="article-container">
                        <img src="./asset/html.png" alt="Project 3" class="project-img" />
                    </div>
                    <h2 class="experience-sub-title project-title">Title: KUET Puzzle</h2>
                    <div class="btn-container">
                        <button
                            class="project-btn"
                            onclick="location.href='https://github.com/hh-hasib'">
                            Github
                        </button>
                        <button
                            class="project-btn"
                            onclick="location.href='https://github.com/hh-hasib'">
                            Live Demo
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact section design -->
    <section class="contact" id="contact">
        <h2 class="heading">Contact <span>Me!</span><span class="animate scroll" style="--i: 1"></span>
        </h2>

        <form action="#">
            <div class="input-box">
                <div class="input-field">
                    <input type="text" placeholder="Full Name" required />
                    <span class="focus"></span>
                </div>
                <div class="input-field">
                    <input type="text" placeholder="Email Address" required />
                    <span class="focus"></span>
                </div>
                <span class="animate scroll" style="--i: 3"></span>
            </div>

            <div class="input-box">
                <div class="input-field">
                    <input type="number" placeholder="Mobile Number" required />
                    <span class="focus"></span>
                </div>
                <div class="input-field">
                    <input type="text" placeholder="Email Subject" required />
                    <span class="focus"></span>
                </div>
                <span class="animate scroll" style="--i: 5"></span>
            </div>

            <div class="textarea-field">
                <textarea
                    name=""
                    id=""
                    cols="30"
                    rows="10"
                    placeholder="Your Message"
                    required></textarea>
                <span class="focus"></span>

                <span class="animate scroll" style="--i: 7"></span>
            </div>

            <div class="btn-box btns">
                <button type="submit" class="btn">Submit</button>

                <span class="animate scroll" style="--i: 9"></span>
            </div>
        </form>
    </section>

    <!-- footer design -->
    <footer class="footer">
        <div class="footer-text">
            <p>Copyright &copy; 2024 by Hasib | All Rights Reserved.</p>

            <span class="animate scroll" style="--i: 1"></span>
        </div>

        <div class="footer-iconTop">
            <a href="#"><i class="bx bx-up-arrow-alt"></i></a>

            <span class="animate scroll" style="--i: 3"></span>
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>
