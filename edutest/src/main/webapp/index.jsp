<!DOCTYPE html>
<html lang="en">

<head>
  <title>Online Examination Portal</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta charset="utf-8" />
  <meta property="twitter:card" content="summary_large_image" />
  <link href="css/index.css" rel="stylesheet"/>
	<link href="css/style.css" rel="stylesheet"/>
  <style data-tag="reset-style-sheet">
    html {
      line-height: 1.15;
    }

    body {
      margin: 0;
    }

    * {
      box-sizing: border-box;
      border-width: 0;
      border-style: solid;
    }

    p,
    li,
    ul,
    pre,
    div,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    figure,
    blockquote,
    figcaption {
      margin: 0;
      padding: 0;
    }

    button {
      background-color: transparent;
    }

    button,
    input,
    optgroup,
    select,
    textarea {
      font-family: inherit;
      font-size: 100%;
      line-height: 1.15;
      margin: 0;
    }

    button,
    select {
      text-transform: none;
    }

    button,
    [type="button"],
    [type="reset"],
    [type="submit"] {
      -webkit-appearance: button;
    }

    button::-moz-focus-inner,
    [type="button"]::-moz-focus-inner,
    [type="reset"]::-moz-focus-inner,
    [type="submit"]::-moz-focus-inner {
      border-style: none;
      padding: 0;
    }

    button:-moz-focus,
    [type="button"]:-moz-focus,
    [type="reset"]:-moz-focus,
    [type="submit"]:-moz-focus {
      outline: 1px dotted ButtonText;
    }

    a {
      color: inherit;
      text-decoration: inherit;
    }

    input {
      padding: 2px 4px;
    }

    img {
      display: block;
    }

    html {
      scroll-behavior: smooth
    }
  </style>
  <style data-tag="default-style-sheet">
    html {
      font-family: Inter;
      font-size: 16px;
    }

    body {
      font-weight: 400;
      font-style: normal;
      text-decoration: none;
      text-transform: none;
      letter-spacing: normal;
      line-height: 1.15;
      color: var(--dl-color-theme-neutral-dark);
      background: var(--dl-color-theme-neutral-light);

      fill: var(--dl-color-theme-neutral-dark);
    }
  </style>
  <link rel="stylesheet" href="https://unpkg.com/animate.css@4.1.1/animate.css" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
    data-tag="font" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=STIX+Two+Text:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&amp;display=swap"
    data-tag="font" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
    data-tag="font" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
    data-tag="font" />
  <link rel="stylesheet" href="https://unpkg.com/@teleporthq/teleport-custom-scripts/dist/style.css" />
  <style>
    @keyframes fade-in-left {
      0% {
        opacity: 0;
        transform: translateX(-20px);
      }

      100% {
        opacity: 1;
        transform: translateX(0);
      }
    }
  </style>
</head>

<body>
  <!-- <link rel="stylesheet" href="./style.css"/> -->
  <form action="<%= request.getContextPath() %>/upload" method="post">
  <div>
	<div class="home-container">
      <navbar-wrapper class="navbar-wrapper"/>
        <!--Navbar component-->
        <header class="navbar-container">
          <header data-thq="thq-navbar" class="navbar-navbar-interactive">
            <img alt="School Logo"
              src="https://greensoftgroups.com/wp-content/uploads/2023/09/greensoft-groups-software-company-logo-header-1.png"
              class="navbar-image1" />
          </header>
        </header>
      </navbar-wrapper>
      <hero-wrapper class="hero-wrapper">
        <!--Hero component-->
        <div class="hero-header78">
          <div class="hero-column thq-section-max-width thq-section-padding">
            <div class="hero-content1">
              <h1 class="hero-text1 thq-heading-1">
                <span>Welcome to Online Test Platform</span>
              </h1>
              <p class="hero-text2 thq-body-large">
                <span>
                  Prepare for your exams with our interactive online test
                  platform. Choose your role below to get started.
                </span>
              </p>
            </div>
            <div class="hero-actions">
              <a href="<%= request.getContextPath() %>/login" class="button">Staff Portal</a>
                
              <a href="<%= request.getContextPath() %>/answer" class="button">Student Portal</a>
            </div>
            <div class="hero-content2">
              <div class="hero-row-container1 thq-animated-group-container-horizontal thq-mask-image-horizontal">
                <div class="thq-animated-group-horizontal">
                  <img alt="Admin Login Image"
                    src="https://aquila-style.com/wp-content/uploads/2020/08/online-exam-1170x819.png"
                    class="hero-placeholder-image10 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Student Login Image"
                    src="https://aquila-style.com/wp-content/uploads/2020/08/online-learning-1170x878.jpg"
                    class="hero-placeholder-image11 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Hero Image"
                    src="https://aquila-style.com/wp-content/uploads/2020/08/Flexibility-education-1170x780.jpg"
                    class="hero-placeholder-image12 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Hero Image" src="https://www.brandmovers.co.uk/hubfs/homepage%20header.png"
                    class="hero-placeholder-image13 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Hero Image"
                    src="https://websitereviewhive.com/wp-content/uploads/2023/08/download-freepik-images-for-free.png"
                    class="hero-placeholder-image14 thq-img-ratio-1-1 thq-img-scale" />

                </div>
                <div class="thq-animated-group-horizontal">
                  <img alt="Admin Login Image"
                    src="https://aquila-style.com/wp-content/uploads/2020/08/online-exam-1170x819.png"
                    class="hero-placeholder-image10 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Student Login Image"
                    src="https://aquila-style.com/wp-content/uploads/2020/08/online-learning-1170x878.jpg"
                    class="hero-placeholder-image11 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Hero Image"
                    src="https://aquila-style.com/wp-content/uploads/2020/08/Flexibility-education-1170x780.jpg"
                    class="hero-placeholder-image12 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Hero Image" src="https://www.brandmovers.co.uk/hubfs/homepage%20header.png"
                    class="hero-placeholder-image13 thq-img-ratio-1-1 thq-img-scale" />
                  <img alt="Hero Image"
                    src="https://websitereviewhive.com/wp-content/uploads/2023/08/download-freepik-images-for-free.png"
                    class="hero-placeholder-image14 thq-img-ratio-1-1 thq-img-scale" />
                </div>
              </div>
              <div>
                <div class="hero-container2">
                  <style>
                    @keyframes scroll-x {
                      from {
                        transform: translateX(0);
                      }

                      to {
                        transform: translateX(calc(-100% - 16px));
                      }
                    }

                    @keyframes scroll-y {
                      from {
                        transform: translateY(0);
                      }

                      to {
                        transform: translateY(calc(-100% - 16px));
                      }
                    }
                  </style>
                </div>
              </div>
            </div>
      </hero-wrapper>
      <features1-wrapper class="features1-wrapper">
        <!--Features1 component-->
        <div class="thq-section-padding">
          <div class="features1-container2 thq-section-max-width">
            <div class="features1-tabs-menu">
              <div class="features1-tab-horizontal1">
                <div class="features1-divider-container1">
                  <div class="features1-container3"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </features1-wrapper>
      <cta-wrapper class="cta-wrapper">
        <!--CTA component-->
        <div class="thq-section-padding">
          <div class="thq-section-max-width">
            <div class="cta-accent2-bg">
              <div class="cta-accent1-bg">
                <div class="cta-container2">
                  <div class="cta-content">
                    <span class="thq-heading-2">
                      <span>Welcome to the Online Test Platform</span>
                    </span>
                  </div>
                  <div class="cta-actions">
                    <a href="<%= request.getContextPath() %>/login" class="button">Staff Portal</a>
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </cta-wrapper>
      <features2-wrapper class="features2-wrapper">
        <!--Features2 component-->
        <div class="thq-section-padding">
          <div class="features2-container2 thq-section-max-width">
            <div class="features2-tabs-menu">
              <div class="features2-tab-horizontal1">
                <div class="features2-divider-container1">
                  <div class="features2-container3"></div>
                </div>
                <div class="features2-content1">
                  <h2 class="thq-heading-2"><span>Admin and Student Login</span></h2>
                  <span class="thq-body-small">
                    <span>
                      Easily access the platform by choosing between admin
                      login for teachers to upload questions and student login
                      for attending tests.
                    </span>
                  </span>
                </div>
              </div>
              <div class="features2-tab-horizontal2">
                <div class="features2-divider-container2">
                  <div class="features2-container4"></div>
                </div>
                <div class="features2-content2">
                  <h2 class="thq-heading-2">
                    <span>Convenient</span>
                  </h2>
                  <span class="thq-body-small">
                    <span>
                      Online exams are more convenient and hassle-free than traditional exams,
                      which are cumbersome, time-consuming, and require physical grading and
                      invigilation. Digital platforms offer easy exam creation and access to
                      virtual management systems.
                    </span>
                  </span>
                </div>
              </div>
              <div class="features2-tab-horizontal3">
                <div class="features2-divider-container3">
                  <div class="features2-container5"></div>
                </div>
                <div class="features2-content3">
                  <h2 class="thq-heading-2"><span>A complete examination system</span></h2>
                  <span class="thq-body-small">
                    <span>
                      Online exams cover various types, including entrance, mid-term, end-term, quizzes, and
                      assignments. They support distance learning, e-learning, executive programs, and part-time or
                      full-time courses. Digital certifications are awarded upon passing these exams, making it a
                      comprehensive examination system.
                    </span>
                  </span>
                </div>
              </div>
            </div>
            <div class="features2-image-container">
              <img alt="feature 1"
                src="https://thedigitalgrapevine.com/wp-content/uploads/2023/04/digital-revolution-1980-1.jpeg"
                class="features2-image1 thq-img-ratio-16-9" />
            </div>
          </div>
        </div>
      </features2-wrapper>
      <steps-wrapper class="steps-wrapper">
        <!--Steps component-->
        <div class="steps-container1 thq-section-padding">
          <div class="steps-max-width thq-section-max-width">
            <div class="steps-container2 thq-grid-2">
              <div class="steps-section-header">
                <h2 class="thq-heading-2">
                  Take test
                </h2>
                <p class="thq-body-large">
                  Click below to experience the advanced online examination portal.
                </p>
                <div class="steps-actions">
                  <a href="<%= request.getContextPath() %>/answer " class="button">Student Portal</a>
                  </button>
                </div>
              </div>
              <div class="steps-container3">
                <div class="steps-container4 thq-card">
                  <h2 class="thq-heading-2"><span>Admin Login</span></h2>
                  <span class="steps-text14 thq-body-small">
                    <span>
                      Teachers can log in using their credentials to upload
                      questions for the test.
                    </span>
                  </span>
                  <label class="steps-text15 thq-heading-3">01</label>
                </div>
                <div class="steps-container5 thq-card">
                  <h2 class="thq-heading-2"><span>Student Login</span></h2>
                  <span class="steps-text17 thq-body-small">
                    <span>
                      Students can log in using their credentials to attend
                      the test.
                    </span>
                  </span>
                  <label class="steps-text18 thq-heading-3">02</label>
                </div>
                <div class="steps-container6 thq-card">
                  <h2 class="thq-heading-2"><span>Attend Test</span></h2>
                  <span class="steps-text20 thq-body-small">
                    <span>
                      Students can answer the questions within the given time
                      frame.
                    </span>
                  </span>
                  <label class="steps-text21 thq-heading-3">03</label>
                </div>
                <div class="steps-container7 thq-card">
                  <h2 class="thq-heading-2"><span>View Score</span></h2>
                  <span class="steps-text23 thq-body-small">
                    <span>
                      After completing the test, students can view their
                      scores.
                    </span>
                  </span>
                  <label class="steps-text24 thq-heading-3">04</label>
                </div>
              </div>
            </div>
          </div>
        </div>
      </steps-wrapper>
      <contact-wrapper class="contact-wrapper">
        <!--Contact component-->
        <div class="contact-contact20 thq-section-padding">
          <div class="contact-max-width thq-section-max-width">
            <div class="contact-section-title">
              <span class="thq-body-small">
                <span>Get in touch with us!</span>
              </span>
              <div class="contact-content1">
                <h2 class="thq-heading-2"><span>Contact Us</span></h2>

              </div>
            </div>
            <div class="contact-row">
              <div class="contact-content2">
                <svg viewBox="0 0 1024 1024" class="thq-icon-medium">
                  <path
                    d="M854 342v-86l-342 214-342-214v86l342 212zM854 170q34 0 59 26t25 60v512q0 34-25 60t-59 26h-684q-34 0-59-26t-25-60v-512q0-34 25-60t59-26h684z">
                  </path>
                </svg>
                <div class="contact-contact-info1">
                  <div class="contact-content3">
                    <h3 class="contact-text4 thq-heading-3">Email</h3>
                    <p class="contact-text5 thq-body-large">
                      <span>
                        contact@greensoftgroups.com€‹
                      </span>
                    </p>
                  </div>
                </div>
              </div>
              <div class="contact-content4">
                <svg viewBox="0 0 1024 1024" class="thq-icon-medium">
                  <path
                    d="M282 460q96 186 282 282l94-94q20-20 44-10 72 24 152 24 18 0 30 12t12 30v150q0 18-12 30t-30 12q-300 0-513-213t-213-513q0-18 12-30t30-12h150q18 0 30 12t12 30q0 80 24 152 8 26-10 44z">
                  </path>
                </svg>
                <div class="contact-contact-info2">
                  <div class="contact-content5">
                    <h3 class="contact-text6 thq-heading-3">Phone</h3>
                    <p class="contact-text7 thq-body-large">
                      <span>
                        +91 7708007655
                        <br>
                        +91 7200047270
                      </span>
                    </p>
                  </div>
                </div>
              </div>
              <div class="contact-content6">
                <svg viewBox="0 0 1024 1024" class="thq-icon-medium">
                  <path
                    d="M512 0c-176.732 0-320 143.268-320 320 0 320 320 704 320 704s320-384 320-704c0-176.732-143.27-320-320-320zM512 512c-106.040 0-192-85.96-192-192s85.96-192 192-192 192 85.96 192 192-85.96 192-192 192z">
                  </path>
                </svg>
                <div class="contact-contact-info3">
                  <div class="contact-content7">
                    <h3 class="contact-text8 thq-heading-3">Office</h3>
                    <p class="contact-text9 thq-body-large">
                      <span>
                        NO.29, 8th Cross East, Thillainagar Trichy, Tamilnadu, India, Pincode - 620 018.
                      </span>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </contact-wrapper>
      <footer-wrapper class="footer-wrapper">
        <!--Footer component-->
        <footer class="footer-footer1 thq-section-padding">
          <div class="footer-max-width thq-section-max-width">
            <div class="footer-content">
              <div class="footer-newsletter">
                <img alt="YourWebsite Logo"
                  src="https://greensoftgroups.com/wp-content/uploads/2023/09/greensoft-groups-software-company-logo-header-1.png"
                  class="footer-image1" />
                  <span class="footer-content2 thq-body-small">
                    <span style="color:azure;">© 2022 YourWebsite. All Rights Reserved.</span>
                  </span>
                </div>
              </div>
              <div class="footer-links">
                <div class="footer-column1">
                  <strong class="thq-body-large footer-column1-title">
                    <span>Quick Links</span>
                  </strong>
                  <div class="footer-footer-links1">
                    <a href="https://example.com" target="_blank" rel="noreferrer noopener" class="thq-body-small">
                      <span>Admin Login</span>
                    </a>
                    <a href="https://example.com" target="_blank" rel="noreferrer noopener" class="thq-body-small">
                      <span>Student Login</span>
                    </a>
                    <a href="https://example.com" target="_blank" rel="noreferrer noopener" class="thq-body-small">
                      <span>Contact Us</span>
                    </a>
                    <a href="https://example.com" target="_blank" rel="noreferrer noopener" class="thq-body-small">
                      <span>About Us</span>
                    </a>
                    <a href="https://example.com" target="_blank" rel="noreferrer noopener" class="thq-body-small">
                      <span>FAQs</span>
                    </a>
                  </div>
                </div>
                
                <div class="footer-column3">
                  <strong class="thq-body-large footer-social-link1-title">
                    <span>Follow Us</span>
                  </strong>
                  <div class="footer-social-links">
                    <div class="footer-link14">
                      <svg viewBox="0 0 877.7142857142857 1024" class="thq-icon-small">
                        <path
                          d="M713.143 73.143c90.857 0 164.571 73.714 164.571 164.571v548.571c0 90.857-73.714 164.571-164.571 164.571h-107.429v-340h113.714l17.143-132.571h-130.857v-84.571c0-38.286 10.286-64 65.714-64l69.714-0.571v-118.286c-12-1.714-53.714-5.143-101.714-5.143-101.143 0-170.857 61.714-170.857 174.857v97.714h-114.286v132.571h114.286v340h-304c-90.857 0-164.571-73.714-164.571-164.571v-548.571c0-90.857 73.714-164.571 164.571-164.571h548.571z">
                        </path>
                      </svg>
                      <span class="thq-body-small"> <a href="https://www.facebook.com/greensoftgroups"/>Facebook</a></span>
                    </div>
                    <div class="footer-link15">
                    <svg class="thq-icon-small" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0 0 30 30">
   						 <path d="M15,3C8.373,3,3,8.373,3,15c0,5.084,3.163,9.426,7.627,11.174c-0.105-0.949-0.2-2.406,0.042-3.442 c0.218-0.936,1.407-5.965,1.407-5.965s-0.359-0.719-0.359-1.781c0-1.669,0.967-2.914,2.171-2.914c1.024,0,1.518,0.769,1.518,1.69 c0,1.03-0.655,2.569-0.994,3.995c-0.283,1.195,0.599,2.169,1.777,2.169c2.133,0,3.772-2.249,3.772-5.495 c0-2.873-2.064-4.882-5.012-4.882c-3.414,0-5.418,2.561-5.418,5.208c0,1.031,0.397,2.137,0.893,2.739 c0.098,0.119,0.112,0.223,0.083,0.344c-0.091,0.379-0.293,1.194-0.333,1.361c-0.052,0.22-0.174,0.266-0.401,0.16 c-1.499-0.698-2.436-2.889-2.436-4.649c0-3.785,2.75-7.262,7.929-7.262c4.163,0,7.398,2.966,7.398,6.931 c0,4.136-2.608,7.464-6.227,7.464c-1.216,0-2.359-0.632-2.75-1.378c0,0-0.602,2.291-0.748,2.853 c-0.271,1.042-1.002,2.349-1.492,3.146C12.57,26.812,13.763,27,15,27c6.627,0,12-5.373,12-12S21.627,3,15,3z"></path>
					</svg>
                      <span class="thq-body-small"><a href="in.pinterest.com/greensoftgroupsg">Pinterest</a></span>
                    </div>
                    <div class="footer-link16">
                      
                    <div class="footer-link18">
                      <svg viewBox="0 0 1024 1024" class="thq-icon-small">
                        <path
                          d="M406.286 644.571l276.571-142.857-276.571-144.571v287.429zM512 152c215.429 0 358.286 10.286 358.286 10.286 20 2.286 64 2.286 102.857 43.429 0 0 31.429 30.857 40.571 101.714 10.857 82.857 10.286 165.714 10.286 165.714v77.714s0.571 82.857-10.286 165.714c-9.143 70.286-40.571 101.714-40.571 101.714-38.857 40.571-82.857 40.571-102.857 42.857 0 0-142.857 10.857-358.286 10.857v0c-266.286-2.286-348-10.286-348-10.286-22.857-4-74.286-2.857-113.143-43.429 0 0-31.429-31.429-40.571-101.714-10.857-82.857-10.286-165.714-10.286-165.714v-77.714s-0.571-82.857 10.286-165.714c9.143-70.857 40.571-101.714 40.571-101.714 38.857-41.143 82.857-41.143 102.857-43.429 0 0 142.857-10.286 358.286-10.286v0z">
                        </path>
                      </svg>
                      <span class="thq-body-small"><a href="https://youtube.com/@greensoftgroups8391?si=SHdxgwrlkioaX0j6">Youtube</a></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
        </footer>
      </footer-wrapper>
    </div>
  </div>
  <script data-section-id="navbar" src="https://unpkg.com/@teleporthq/teleport-custom-scripts"></script>
</body>
</form>
</html>
