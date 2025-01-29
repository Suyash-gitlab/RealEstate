<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ghrawaala.com</title>
    <link rel="icon" href="https://img.freepik.com/premium-vector/natures-rest-stop_1107076-469.jpg" type="image/icon type">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="header" >
    <img alt="" src="https://img.freepik.com/premium-vector/natures-rest-stop_1107076-469.jpg" height="120px" width="120px">
            <h1 style="font-family: 'Times New Roman', serif">GHAR_WAALAA</h1>
	
			<%
			 HttpSession s1=request.getSession();
			 String x =(String)s1.getAttribute("temp");
			 %>

        <nav class="navBar">
            <ul>
                <li><a href="#Header">Home</a></li>
                <li><a href="#footer">Contact</a></li>
                <li><a href="BuyProperty">Buy House</a></li>
                <li><a href="SellProperty">Sell your house</a></li>
            </ul>
        </nav>

        <div class="login">
		<%
			 if(x==null)
			 {	 
		%>
			<button class="btn"><a href="login">Log-In Here</a></button>
			
			
			<button class="btn"><a href="Register">Create Account</a></button>
			
		<% 	 
			 }
			 else{
		%>
		
		
		
			<button class="btn" ><a href="Myprop/<%=x%>">Preview</a></button>
		
			<button class="btn" ><a href="logout">Log-Out</a></button>
			
			
			
		<%
			 }
		%>
		
		
		
    </header>

    <div class="main" id="Header">
        <div class="main-content">
            <div class="text">    
		<%
			 HttpSession s2=request.getSession();
			 String y =(String)s1.getAttribute("temp");
			 if(y==null)
			 {	 
		%>
		 
		<% 	 
			 }
			 else{
		%>
            <h1> Hey👋🏻  ${kk}</h1>
		<%
			 }
		%>
                <h1>"Your Dream Property, Just a Click Away!!"</h1>
                <p>Discover a seamless platform for buying and selling real estate, tailored to meet your unique needs.
                 we connect buyers and sellers with ease, transparency, and trust. Explore endless opportunities in just a few clicks</p>
            </div>

            <div class="select">
                   
                
                
    
                <div class="select-btn">
                    <img src="https://i.postimg.cc/YCs7ZQLr/search.png" alt="icon">
                </div>
            </div>
        </div>

        <div class="img">
            <img src="https://i.postimg.cc/9Qr5dz8v/house-1.png" alt="image">
        </div>

    </div>
    <div class="explore">
        <div class="img-exp">
            <img src="https://i.postimg.cc/QN7zcCLy/house-2.png" alt="image">
        </div>
        <div class="content-exp">
            <h2>We are all biochemically unique. Buying or selling your home should be, too</h2>
            <p>Just as our fingerprints are individual, so too are our needs and desires when it comes to finding the perfect home.  The traditional, one-size-fits-all approach to real estate simply doesn't resonate with this truth. We take the time to truly understand your specific needs, aspirations, and anxieties, tailoring our services to create a personalized experience that reflects your individuality</p>
            <button href="login" class="btn-exp">Explore More</button>
        </div>
    </div>

   <div class="owner">
        <div class="owner-text">
            <h2>Are you a property owner?</h2>
            <p>Put your email address and get listed</p>
        </div>

        <div class="subscribe">
            <form>
                <img src="https://i.postimg.cc/hjKYYd32/send.png" alt="icon">
                <input type="email" spellcheck="false" placeholder="Enter your email">
                <input type="submit" value="Submit" id="search">
            </form>
        </div>
    </div>

    <footer class="footer" id="footer">
        <div class="estate">
            <h2>Real estate</h2>
            <p>When you're ready for a change, we're ready to help</p>

            <div class="social">
                <div class="icon">
                    <img src="https://i.postimg.cc/BQwB9Ktm/facebook.png" alt="logo">
                </div>
    
                <div class="icon">
                    <img src="https://i.postimg.cc/2SbFzSZr/insta.png" alt="logo">
                </div>
    
                <div class="icon">
                    <img src="https://i.postimg.cc/kg0NDPQ8/linkedin.png" alt="logo">
                </div>
    
                <div class="icon">
                    <img src="https://i.postimg.cc/Wz1gxNVR/twitter.png" alt="logo">
                </div>
            </div>
        </div>

        
       
        <div class="about">
            <h4>About</h4>
            <p>Privacy & Policy</p>
            <p>Terms & Conditions</p>
            <p>For Businesses</p>
            <p>Support</p>
        </div>

        <div class="store">
            <img src="" alt="">
            <img src="" alt="">
        </div>

    </footer>
</body>
</html>

<style>
@import url('https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap');

:root {
    --navbar-color: #142130; 
    --white: #EFEFEF; 
    --button: #3D768A; 
    --icon-bg: #DEE8FA; 
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Lato', sans-serif;
}

body {
    width: 100%;
    height: 100vh;
}

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 100px;
    width: 100%;
    padding: 0 1rem;
    margin-top: 50px;
    }

    .header .navBar ul {
        display: flex;
        justify-content: center;
        align-items: center;
    }

        .header .navBar ul li {
            list-style-type: none;
            padding: 0 1.5rem;
        }

            .header .navBar ul li a {
                text-decoration: none;
                color: var(--navbar-color);
                font-weight: 700;
                font-size: 1rem;
            }

    .header .login .btn, .header .login .btn2 {
        width: 150px;
        height: 45px;
        border: none;
        outline: none;
        border-radius: 50px;
        -webkit-border-radius: 50px;
        -moz-border-radius: 50px;
        -ms-border-radius: 50px;
        -o-border-radius: 50px;
        cursor: pointer;
        margin: 0 .4rem;
        font-size: 1rem;
    }

        .login .btn, .login .btn2 {
            background-color: var(--icon-bg);
            color: var(--navbar-color);
            box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .1);
            transition: all .3s ease;
            -webkit-transition: all .3s ease;
            -moz-transition: all .3s ease;
            -ms-transition: all .3s ease;
            -o-transition: all .3s ease;
        }

            .login .btn:hover, .login .btn2:hover { background: var(--button); color: var(--white); }

/*MAIN*/

.main {
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-top: 10%;
}

    .main .main-content .text { width: 500px; }
        .main .main-content .text h1 {
            font-size: 3.2rem;
            color: var(--navbar-color);
            font-weight: 900;
        }

        .main .main-content .text p {
            color: var(--navbar-color);
            font-weight: 400;
            margin-top: 2rem;
        }

    .main .main-content .select {
        margin-top: 4rem;
        width: 600px;
        height: 80px;
        background-color: var(--white);
        box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .1);
        display: flex;
        justify-content: space-around;
        align-items: center;
        border-radius: 50px;
        -webkit-border-radius: 50px;
        -moz-border-radius: 50px;
        -ms-border-radius: 50px;
        -o-border-radius: 50px;
    }

        .main .main-content .select-dropdown, .main .main-content .select-dropdown * { 
            margin: 0; 
            padding: 0;
            position: relative;
            box-sizing: border-box;
        }

            .main .main-content .select-dropdown {
                position: relative;
                background-color: transparent;
                border-radius: 50px;
                -webkit-border-radius: 50px;
                -moz-border-radius: 50px;
                -ms-border-radius: 50px;
                -o-border-radius: 50px;
            }

                .main .main-content .select-dropdown:after {
                    content: '';
                    position: absolute;
                    top: 50%;
                    right: 12px;
                    width: 0;
                    height: 0;
                    margin-top: -2px;
                    border-top: 5px solid #AAAAAA;
                    border-right: 5px solid transparent;
                    border-left: 5px solid transparent;
                }

                .main .main-content .select-dropdown select {
                    font-size: 1rem;
                    font-weight: normal;
                    max-width: 100%;
                    padding: 8px 24px 8px 10px;
                    border: none;
                    background-color: transparent;
                    appearance: none;
                }

                    .main .main-content .select-dropdown select:active, .main .main-content .select-dropdown select:focus { outline: none; box-shadow: none; }

        .main .main-content .select-btn img {
            background-color: var(--button);
            padding: 0.4rem;
            cursor: pointer;
            border-radius: 50px;
            -webkit-border-radius: 50px;
            -moz-border-radius: 50px;
            -ms-border-radius: 50px;
            -o-border-radius: 50px;
        }


    .main .img {
        width: 420px;
        height: 320px;
    }

        .main .img img {
            border-radius: 71% 29% 27% 73% / 37% 53% 47% 63%;
            -webkit-border-radius: 71% 29% 27% 73% / 37% 53% 47% 63%;
            -moz-border-radius: 71% 29% 27% 73% / 37% 53% 47% 63%;
            -ms-border-radius: 71% 29% 27% 73% / 37% 53% 47% 63%;
            -o-border-radius: 71% 29% 27% 73% / 37% 53% 47% 63%;
            width: 100%;
        }

.main2 { margin-top: 15%; }

    .main2 h1 {
        text-align: center;
        color: var(--navbar-color);
        font-size: 2.8rem;
    }

    .main2 .main-card {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        place-items: center;
    }

        .main2 .main-card .card {
            margin-top: 6rem;
            width: 320px;
            height: 350px;
            background-color: #F8F8F8;
            text-align: center;
            padding: 1.25rem 1rem;
            border: 1px solid var(--button);
            box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .1);
            border-radius: 12px;
            -webkit-border-radius: 12px;
            -moz-border-radius: 12px;
            -ms-border-radius: 12px;
            -o-border-radius: 12px;
        }

            .main2 .main-card .card .icon-img {
                background-color: #E8E8E8;
                border-radius: 50%;
                -webkit-border-radius: 50%;
                -moz-border-radius: 50%;
                -ms-border-radius: 50%;
                -o-border-radius: 50%;
                width: 75px;
                height: 75px;
                position: relative;
                margin-left: auto;
                margin-right: auto;
                box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .1);
                display: flex;
                justify-content: center;
                align-items: center;
            }

                .main2 .main-card .card .icon-img img { padding: 1.25rem; }

            .main2 .main-card .card h3 {
                margin-top: 2rem;
                color: var(--navbar-color);
                font-size: 1.4rem;
            }

            .main2 .main-card .card p {
                margin-top: 1.5rem;
                color: var(--navbar-color);
                font-weight: 300;
                font-size: .85rem;
            }

/*EXPLORE*/

.explore { 
    margin-top: 15%; 
    display: flex;
    justify-content: space-around;
    align-items: center;
}

    .explore .img-exp img {
        border-radius: 32% 68% 49% 51% / 28% 53% 47% 72%;
        -webkit-border-radius: 32% 68% 49% 51% / 28% 53% 47% 72%;
        -moz-border-radius: 32% 68% 49% 51% / 28% 53% 47% 72%;
        -ms-border-radius: 32% 68% 49% 51% / 28% 53% 47% 72%;
        -o-border-radius: 32% 68% 49% 51% / 28% 53% 47% 72%;
    }

    .explore .content-exp { width: 550px; }
        .explore .content-exp h2 { color: var(--navbar-color); font-size: 1.8rem; }

        .explore .content-exp p {
            margin-top: 2rem;
            color: var(--navbar-color);
            font-weight: 400;
            font-size: .9rem;
        }

        .explore .content-exp .btn-exp {
            width: 150px;
            height: 45px;
            border: none;
            outline: none;
            border-radius: 50px;
            -webkit-border-radius: 50px;
            -moz-border-radius: 50px;
            -ms-border-radius: 50px;
            -o-border-radius: 50px;
            cursor: pointer;
            margin-top: 2.5rem;
            font-size: 1rem;
            background-color: var(--button);
            color: var(--white);
            box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .15);
            transition: all .3s ease;
            -webkit-transition: all .3s ease;
            -moz-transition: all .3s ease;
            -ms-transition: all .3s ease;
            -o-transition: all .3s ease;
        }

            .explore .content-exp .btn-exp:hover { background-color: var(--icon-bg); color: var(--navbar-color); }

/*HOUSES*/

.houses { margin-top: 15%; }

    .houses .content-house {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 6%;
    }

        .houses .content-house .text-house { width: 500px; }

            .houses .content-house .text-house p {
                margin-top: 2rem;
                color: var(--navbar-color);
                font-weight: 400;
                font-size: 1rem;
            }

        .houses .content-house .select-dropdown,
        .houses .content-house .select-dropdown * {
            margin: 0;
            padding: 0;
            position: relative;
            box-sizing: border-box;
        }

            .houses .content-house .select-dropdown {
                position: relative;
                margin-top: -3rem;
                background-color: transparent;
                border-radius: 50px;
                -webkit-border-radius: 50px;
                -moz-border-radius: 50px;
                -ms-border-radius: 50px;
                -o-border-radius: 50px;
                border: 1px solid var(var(--navbar-color));
                box-shadow: 0px 12px 12px 0 rgba(0, 0, 0, .15);
            }

                .houses .content-house .select-dropdown:after {
                    content: '';
                    position: absolute;
                    top: 50%;
                    right: 8px;
                    width: 0;
                    height: 0;
                    margin-top: -2px;
                    border-top: 5px solid #aaa;
                    border-right: 5px solid transparent;
                    border-left: 5px solid transparent;
                }

                .houses .content-house .select-dropdown select {
                    font-size: 1rem;
                    font-weight: normal;
                    max-width: 100%;
                    padding: 8px 24px 8px 10px;
                    border: none;
                    background-color: transparent;
                    appearance: none;
                }

                    .houses .content-house .select-dropdown select:active,
                    .houses .content-house .select-dropdown select:focus {
                        outline: none;
                        box-shadow: none;
                    }
                
.house-box {
    margin-top: 10%;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    place-items: center;
    gap: 3rem;
}

.box {
    background-color: var(--white);
    display: flex;
    justify-content: center;
    align-items: center;
    width: 550px;
    height: 300px;
    border: 1px solid var(--button);
    border-radius: 6px;
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    -ms-border-radius: 6px;
    -o-border-radius: 6px;
    box-shadow: 0px 18px 14px 10px rgba(0, 0, 0, .18);
}

    .box .box-img {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-left: 0.5rem;
    }

.box-content {
    position: relative;
    margin-left: auto;
    margin-right: auto;
}

    .box-content .box-text {
        margin-bottom: 3rem;
        margin-left: 1.5rem;
        text-align: left;
        color: var(--navbar-color);
    }

    .box-content .rooms {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        place-items: center;
        gap: 0.4rem;
    }

    .box-content .box-btn {
        margin-top: 2rem;
        display: flex;
        justify-content: space-around;
        align-items: center;
    }

.box-text .price {
    text-align: left;
    margin-top: 1.4rem;
    color: var(--button);
}

.rooms .room {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 0.35rem;
}      

.box-btn .view .btn {
    width: 120px;
    height: 30px;
    border: none;
    outline: none;
    border-radius: 50px;
    -webkit-border-radius: 50px;
    -moz-border-radius: 50px;
    -ms-border-radius: 50px;
    -o-border-radius: 50px;
    cursor: pointer;
    margin: 0 .4rem;
    font-size: .95rem;
    background-color: var(--button);
    color: var(--white);
    box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .15);
    transition: all .3s ease;
    -webkit-transition: all .3s ease;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
}

    .view .btn:hover {
        background-color: var(--icon-bg);
        color: var(--navbar-color);
    }

.box-btn .share {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 1rem;
}

.share .share-box {
    background-color: var(--icon-bg);
    border-radius: 50%;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    padding: 0.6rem;
    box-shadow: 0px 10px 10px 5px rgba(0, 0, 0, .18);
    cursor: pointer;
    transition: all .3s ease;
    -webkit-transition: all .3s ease;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
}

    .share-box:hover {
        transform: scale(1.1);
        -webkit-transform: scale(1.1);
        -moz-transform: scale(1.1);
        -ms-transform: scale(1.1);
        -o-transform: scale(1.1);
    }

    .share-box img {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
/*CLIENTS*/

.clients {
    position: relative;
    margin-top: 15%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 3rem;
}

    .clients .left .customer {
        border-radius: 85% 15% 31% 69% / 64% 36% 64% 36%;
        -webkit-border-radius: 85% 15% 31% 69% / 64% 36% 64% 36%;
        -moz-border-radius: 85% 15% 31% 69% / 64% 36% 64% 36%;
        -ms-border-radius: 85% 15% 31% 69% / 64% 36% 64% 36%;
        -o-border-radius: 85% 15% 31% 69% / 64% 36% 64% 36%;
    }

    .clients .right { width: 750px; }

.right h2 { 
    font-size: 2.4rem;
    color: var(--navbar-color);
    margin-bottom: 10%;
}

.right p {
    color: var(--navbar-color);
    font-weight: 400;
    font-size: 1.15rem;
    margin-bottom: 5%;
}

.right .name { margin-top: 3rem; }
.name h4 { color: var(--navbar-color); font-size: 1.25rem; }
.name p { font-size: .9rem; }

/*OWNER*/

.owner {
    position: relative;
    margin-left: auto;
    margin-right: auto;
    margin-top: 20%;
    background-color: var(--white);
    width: 750px;
    height: 200px;
    box-shadow: 2px 12px 12px 18px rgba(0, 0, 0, .18);
    border-radius: 6px;
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    -ms-border-radius: 6px;
    -o-border-radius: 6px;
    padding: 1rem;
}

    .owner .owner-text { text-align: center; }

.owner-text h2 { 
    color: var(--navbar-color);
    font-size: 1.8rem;
}

.owner-text p { 
    color: var(--navbar-color);
    font-size: 1rem;
    font-weight: 400; 
}

.subscribe {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 3rem;
}

    .subscribe form {
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
    }

    .subscribe img {
        position: absolute;
        left: 10px;
        top: 15px;
        cursor: pointer;
    }

    .subscribe input[type="email"] {
        width: 340px;
        height: 50px;
        border: 1px solid var(--button);
        outline: none;
        padding: 0 25px;
        text-align: center;
        background: #E0E0C4;
        border-radius: 25px 0 0 25px;
        -webkit-border-radius: 25px 0 0 25px;
        -moz-border-radius: 25px 0 0 25px;
        -ms-border-radius: 25px 0 0 25px;
        -o-border-radius: 25px 0 0 25px;
    }

::placeholder {
    color: #000000;
    font-size: 1rem;
    transition: opacity .3s ease;
    -webkit-transition: opacity .3s ease;
    -moz-transition: opacity .3s ease;
    -ms-transition: opacity .3s ease;
    -o-transition: opacity .3s ease;
}

:focus::placeholder { opacity: .3; }

    .subscribe input[type="submit"] {
        position: relative;
        width: 150px;
        height: 50px;
        border: none;
        outline: none;
        cursor: pointer;
        background: var(--button);
        color: var(--white);
        left: -25px;
        border-radius: 25px;
        -webkit-border-radius: 25px;
        -moz-border-radius: 25px;
        -ms-border-radius: 25px;
        -o-border-radius: 25px;
        box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .15);
        transition: all .3s ease;
        -webkit-transition: all .3s ease;
        -moz-transition: all .3s ease;
        -ms-transition: all .3s ease;
        -o-transition: all .3s ease;
    }

        .subscribe input[type="submit"]:hover {
            background: var(--icon-bg);
            color: var(--navbar-color);
        }

/*FOOTER*/

.footer {
    width: 100%;
    height: 250px;
    background: linear-gradient(305deg, rgba(241, 241, 241, 1) 28%, rgba(187, 255, 252, 1) 58%, rgba(148, 233, 255, 1) 100%);
    margin-top: 15%;
    border-top-left-radius: 50px;
    border-top-right-radius: 50px;
    padding: 1.2rem;
    display: flex;
    justify-content: space-around;
    align-items: center;
}

    .footer .estate {
        margin-top: 1rem;
        width: 300px;
    }

.estete h2 {
    color: var(--navbar-color);
    font-size: 1.8rem;
}

.estate p {
    color: var(--navbar-color);
    font-weight: 400;
    font-size: 1rem;
}

.estate .social {
    margin-top: 1.5rem;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 1.3rem;
}

    .estate .social .icon {
        background-color: var(--icon-bg);
        width: 60px;
        height: 60px;
        box-shadow: 0px 12px 12px 0px rgba(0, 0, 0, .15);
        border-radius: 50%;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        -ms-border-radius: 50%;
        -o-border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
        transition: all .3s ease;
        -webkit-transition: all .3s ease;
        -moz-transition: all .3s ease;
        -ms-transition: all .3s ease;
        -o-transition: all .3s ease;
    }

        .estate .social .icon:hover {
            transform: scale(1.05);
            -webkit-transform: scale(1.05);
            -moz-transform: scale(1.05);
            -ms-transform: scale(1.05);
            -o-transform: scale(1.05);
        }

    .footer h4 {
        margin-bottom: 1.2rem;
        color: var(--navbar-color);
        font-size: 1.25rem;
        font-weight: 700;
        cursor: pointer;
    }

    .footer .about p {
        color: var(--navbar-color);
        font-weight: 400;
        padding: 0.25rem 0;
        cursor: pointer;
    }

    .footer .store {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 1rem;
    }

.store img { cursor: pointer; }

@media (max-width: 1160px) {
    .header .navBar ul { display: none; }

    .main2 .main-card { display: grid; grid-template-columns: 1fr; }

    .houses .house-box { display: grid; grid-template-columns: 1fr; }
}

@media (max-width: 769px) {
    .header .login .btn,
    .header .login .btn2 {
        width: 75px;
        height: 40px;
        font-size: .6rem;
    }

    .header .logo img {width: 160px; }

    .main-content {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

        .main-content .text h1 { font-size: 1.4rem; }
        .main-content .text p { font-size: .9rem; }

    .main .main-content .text {
        position: relative;
        margin-left: auto;
        margin-right: auto;
        width: 350px;
    }

    .main .main-content .select {
        width: 320px;
        height: 300px;
        display: flex;
        flex-direction: column;
    }

    .main .main-content .select-dropdown select { font-size: .75rem; }
    .main .img { display: none; }

    .explore { flex-direction: column; }

        .explore .content-exp {
            width: 350px;
            text-align: center;
            margin-top: 2rem;
        }

    .house-box .box { width: 450px; height: 240px; }
        .house-box .box .box-img { width: 200px; height: auto; }
    .box .box-img img {width: 100%; }

    .box-text h3 {
        font-size: 1rem;
        margin-top: 1rem;
        margin-bottom: -0.75rem;
    }

    .box-text .price { margin-top: 0.75rem; }
    .box-content .rooms { gap: 0.1rem; margin-top: -1.8rem; }
    .box-content .box-btn { margin-top: 0.6rem; }
    .box-btn img { width: 15px; height: auto; }

    .clients {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

        .clients .right {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 450px;
        }

            .clients .right h2 { font-size: 1.4rem; }

    .right p { font-size: .9rem; }

    .owner { width: 450px; }
        .owner-text h2 { font-size: 1.2rem; }
        .owner-text p { font-size: 0.8rem; }

    .subscribe input[type="email"] { width: 240px; }
    .subscribe img { width: 20px; height: auto; }
    .subscribe input[type="submit"]{ width: 80px; font-size: .8rem; }
    ::placeholder { font-size: .75rem; }

    .footer {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 700px;
        margin-top: 25%;
        text-align: center;
    }

        .footer .estate h2 { font-size: 1rem; }
        .footer h4 { font-size: .9rem; margin-top: 2rem; }
        .footer .about p { font-size: .7rem; }
        .footer .store { margin-top: 2rem; }
            .footer .store img { width: 150px; height: auto; }

    .estate p { font-size: .75rem; }
    .estate .social .icon { width: 40px; height: 40px; }
    .icon img { width: 20px; height: auto; }
}
 
@media (max-width: 490px) {
    .header .login .btn, .header .login .btn2 { display: none; }

    .explore .img-exp img { width: 320px; }

    .house-box .box { width: 320px; height: 300px; }
    .house-box .box .box-img { display: none; }

    .clients .right { width: 320px; }
    .clients .left .customer { width: 320px;}

    .owner { width: 340px; }
}
</style>

