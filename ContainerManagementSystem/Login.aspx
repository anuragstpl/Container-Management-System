<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ContainerManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Container Management System</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="imagetoolbar" content="no">
    <link rel="stylesheet" type="text/css" href="site-files/css/lf_styles.css">
    <link rel="stylesheet" type="text/css" href="site-files/css/hf_styles.css">

    <style type="text/css">
        @media (min-width: 1025px) {

            #content {
                width: 960px;
                margin-top: 34%;
            }

            .idTabs {
                padding: 0px;
                list-style: none;
                width: 499px;
                position: absolute;
                clear: left;
                float: left;
                margin-top: -427px;
                margin-left: 549px;
            }

                .idTabs li {
                    margin: 0px 1px 0px 0px;
                    padding: 0px;
                }

                    .idTabs li a {
                        margin: 0px;
                        padding: 6px;
                        float: left;
                        text-decoration: none;
                        color: #ffffff;
                        background: #0282af;
                        color: #fff;
                        font-size: 1.1em;
                        font-style: italic;
                        width: 81px;
                        text-align: center;
                        border-right: 1px solid #4ea8c7;
                    }

                        .idTabs li a.first {
                            border-radius: 6px 0px 0px 0px;
                            -o-border-radius: 0px 6px 0px 0px;
                            -webkit-border-radius: 0px 6px 0px 0px;
                        }

                        .idTabs li a.last {
                            border-radius: 0px 6px 0px 0px;
                            -o-border-radius: 0px 6px 0px 0px;
                            -webkit-border-radius: 0px 6px 0px 0px;
                            border: none;
                        }

                        .idTabs li a:hover {
                            color: #ffa800;
                            background: #81caff;
                        }

                        .idTabs li a.selected {
                            color: #ffa800;
                            background: #127db3;
                        }

            .Search_Form_Expanded fieldset label .tideFormInput {
                height: 24px;
            }

            div.lf_extra {
                margin-top: -395px;
                padding: 0px;
                float: left;
                width: 375px;
                background: #127db3;
                min-height: 323px;
                border-radius: 0px 0px 10px 10px;
                margin-left: 549px;
                -o-border-radius: 0px 0px 10px 10px;
                -webkit-border-radius: 0px 0px 10px 10px;
            }


            div#content div.Search_Form_Expanded {
                margin: 0px 22px 0px 0px;
                padding: 0px;
                float: right;
                width: 371px;
                background: #127db3;
                min-height: 323px;
                border-radius: 0px 0px 10px 10px;
                -o-border-radius: 0px 0px 10px 10px;
                -webkit-border-radius: 0px 0px 10px -30px;
            }

                div#content div.Search_Form_Expanded label {
                    margin: 0px;
                    padding: 0px;
                    margin-left: 5px;
                    margin-top: 2px;
                    float: left;
                    text-align: left;
                    width: 350px;
                    font-size: 14px;
                    font-weight: normal;
                    color: #ffffff;
                    border: 0px solid red;
                }

                div#content div.Search_Form_Expanded h1 {
                    font-size: 100%;
                    background: #f4de78;
                    margin: 0px;
                    padding: 0px;
                    text-align: center;
                    height: 30px;
                }

                div#content div.Search_Form_Expanded legend {
                    display: none;
                }

            div#content div.Search_Form_Expanded {
                margin: 0;
                padding: 0;
                font-family: "arial";
            }

                div#content div.Search_Form_Expanded .Searchfooter {
                    height: 22px;
                    text-align: right;
                }

                div#content div.Search_Form_Expanded .Box_content {
                    border: thin solid #000000;
                }

                div#content div.Search_Form_Expanded fieldset {
                    width: 360px;
                    margin: 15px 0px 0px 0px;
                    padding: 4px;
                    background: #127db3;
                    text-align: right;
                    color: #F36729;
                    font-weight: bold;
                    font-size: 12px;
                    float: right;
                    border: none;
                }

                div#content div.Search_Form_Expanded form select {
                    width: 240px;
                    font-size: 13px;
                    margin-bottom: 4px;
                    padding: 3px;
                    border: 1px solid #7f9db9;
                    float: right;
                }

                div#content div.Search_Form_Expanded fieldset input {
                    float: right;
                    border: 1px solid #7f9db9;
                    width: 232px;
                    padding: 3px;
                }

                div#content div.Search_Form_Expanded fieldset .checkbox {
                    display: none;
                }

                div#content div.Search_Form_Expanded fieldset .lf_Show_All {
                    float: left;
                    width: 120px;
                    text-align: right;
                }

                div#content div.Search_Form_Expanded fieldset .Searchfooter {
                    float: left;
                    width: 120px;
                    text-align: right;
                }



            #extra {
                width: 960px;
                margin: 0 auto;
                font-family: Verdana, Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 25px;
                margin-bottom: 20px;
            }


            #hot-deal {
                margin: 0px 22px 0px 0px;
                padding: 0px;
                float: right;
                width: 370px;
            }

                #hot-deal ul {
                    margin: 0px;
                    padding: 0px;
                    float: left;
                    width: 370px;
                    height: 166px;
                    list-style: none;
                    ;
                    background: url(site-files/images/hot-bg.png) no-repeat;
                    overflow: hidden;
                }

                #hot-deal .lf_box_title {
                    margin: -22px 0px 0px 0px;
                    padding: 0px;
                    float: left;
                    color: #fff;
                    font-size: 1.4em;
                    width: 370px;
                    text-transform: uppercase;
                    font-family: Georgia;
                    text-shadow: 2px -2px 4px #004783;
                    text-align: right;
                    -o-text-shadow: 2px -2px 4px #004783;
                    -webkit-text-shadow: 2px -2px 4px #004783;
                }

                #hot-deal li {
                    margin: 0px;
                    padding: 15px;
                    float: left;
                }

                    #hot-deal li a {
                        color: #ffa800;
                        text-align: left;
                        font-size: 0.8em;
                        text-shadow: 0px -1px 2px #000;
                        -o-text-shadow: 0px -1px 2px #000;
                        -webkit-text-shadow: 0px -1px 2px #000;
                    }

                        #hot-deal li a:hover {
                            color: #000;
                            text-shadow: 0px -1px 2px #fff;
                            -o-text-shadow: 0px -1px 2px #fff;
                            -webkit-text-shadow: 0px -1px 2px #fff;
                        }

                    #hot-deal li p {
                        color: #fff;
                    }

            .bg_slider {
                display: block;
            }
        }

        @media screen and (max-width:1024px) {


            /* ID Tab */
            div.search_box {
                margin: 0px;
                padding: 0px;
                float: left;
                background: #deedfd;
                width: 100%;
            }

                div.search_box .search_title {
                    font-size: 1.3em;
                    display: block;
                    margin-top: 5px;
                    margin-left: 1px;
                    margin-bottom: 10px;
                    width: 98%;
                    overflow: hidden;
                    font-family: "Gudea";
                }

            ul.idTabs {
                clear: left;
                padding: 0px 0px;
                margin-left: -9px;
                margin-top: 5%;
            }

                ul.idTabs li {
                    List-Style-Type: none;
                    display: inline;
                    background: #81caff;
                    padding: 6px;
                    margin: 10px 0px 0px 0px!important;
                    font-weight: bold;
                }

                    ul.idTabs li a {
                        color: #fff;
                        text-decoration: none;
                        border: 0px;
                    }

                        ul.idTabs li a:hover {
                            color: #ffcc00;
                            text-decoration: none;
                            border: 0px;
                        }
            /* ID Tab - End */

            #content {
                margin-top: 32%;
            }
        }


        @media only screen and (min-width : 1224px) {
            #content {
                margin-top: 50%;
            }
        }

        @media only screen and (min-width : 1280px) {
            #content {
                margin-top: 42% !important;
            }
        }

        @media only screen and (min-width : 1600px) {
            #content {
                margin-top: 50% !important;
            }

            .heading_1 {
                padding-top: 70px;
            }
        }

        @media only screen and (min-width : 1680px) {
            #content {
                margin-top: 50% !important;
            }

            .heading_1 {
                padding-top: 70px;
            }
        }

        @media only screen and (min-width : 1440px) {
            #content {
                margin-top: 46% !important;
            }
        }


        /* Large screens ----------- */
        @media only screen and (min-width : 1824px) {
            #content {
                margin-top: 50% !important;
            }

            .heading_1 {
                padding-top: 91px!important;
            }
        }

        @media only screen and (min-width : 1920px) {
            #content {
                margin-top: 50% !important;
            }

            .heading_1 {
                padding-top: 91px!important;
            }
        }
    </style>


    <link rel="stylesheet" href="site-files/css/pureslider.css" />
    <script src="site-files/js/jquery-1.11.3.min.js"></script>
    <script src="site-files/js/pureslider.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#lf_container").addClass("new_lf_container");
        });
    </script>
    <script>
        $(".lf_content_box").wrapInner($("<div id='new_lf_content_box'></div>"));
    </script>



    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lobster">
    <link href='http://fonts.googleapis.com/css?family=Courgette' rel='stylesheet' type='text/css'>




    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>


    <div id="AgentHome">
        <div id="bodycontainer">
            <div id="lf_container">
                <div id="container">
                    <div id="header">
                        <div class="lf_pad">
                            <div class="lf_content_box">
                                <div class="lf_link_box_12936095 info">

                                </div>
                                <div class="lf_link_box_12936094 social_icons">
                                    <ul>
                                        <li class="odd first"><a href="index.htm">
                                            <img src="site-files/images/home-1.png" height="25" width="25" alt="" border="0"></a></li>
                                        <li class="even"><a href="contact_us.htm">
                                            <img src="site-files/images/email-1.png" height="25" width="25" alt="" border="0"></a></li>
                                        <li class="odd last"><a href="#" target="_blank">
                                            <img src="site-files/images/facebook-1.png" height="25" width="25" alt="" border="0"></a></li>
                                    </ul>
                                </div>
                                <div class="head_container">
                                    <div id="logo">
                                        <img src="site-files/images/lbcomcrwtus3.jpg" height="150" width="1000">
                                    </div>
                                </div>
                                <div class="lf_menu">
                                    <ul class="sf-menu sf-vertical">
                                        <li class="menu_level_1"><a href="index.htm" class="link_level_1">Home</a></li>
                                        <li class="menu_level_1"><a href="about_us.htm" class="link_level_1">About Us</a></li>
                                        <li class="menu_level_1"><a href="cruises.htm" class="link_level_1">Cruises</a></li>
                                        <li class="menu_level_1"><a href="vacations.htm" class="link_level_1">Vacations</a></li>
                                        <li class="menu_level_1"><a href="tours.htm" class="link_level_1">Tours</a></li>
                                        <li class="menu_level_1"><a href="specials.htm" class="link_level_1">Specials</a></li>
                                        <li class="menu_level_1"><a href="destinations.htm" class="link_level_1">Destinations</a></li>
                                    </ul>
                                </div>
                                <div class="tideHeaderBody">
                                    <div class="bg_slider">
                                        <div class="slide" style="background-image: url('site-files/images/slide_1.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="slide" style="background-image: url('site-files/images/slide_2.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="slide" style="background-image: url('site-files/images/slide_3.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="slide" style="background-image: url('site-files/images/slide_4.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="slide" style="background-image: url('site-files/images/slide_5.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="slide" style="background-image: url('site-files/images/slide_6.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="slide" style="background-image: url('site-files/images/slide_7.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="slide" style="background-image: url('site-files/images/slide_8.jpg')">
                                            &nbsp;
                                        </div>
                                        <div class="ns-next">
                                            &nbsp;
                                        </div>
                                        <div class="ns-prev">
                                            &nbsp;
                                        </div>
                                    </div>
                                    <script>
                                        $('.bg_slider').pureSlider();
                                    </script>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div id="contentwrapper">
                        <div id="wrapper">
                            <div id="content">
                                <div class="lf_pad">
                                    <div class="lf_intro">
                                        <div class="lf_content_box"></div>
                                    </div>
                                    <div class="lf_main">
                                        <div class="lf_content_box">
                                            <div class="tideBody">
                                                <h3 class="heading_1" id="heading_1">Container Shipment Packages</h3>
                                            </div>
                                            <div class="lf_link_box_12936127 content">
                                                <ul>
                                                    <li class="odd first"><a href="http://content.onlineagency.com/c/15/15101/26613_15101.htm">
                                                        <img src="site-files/images/v_1.png" height="196" width="301" alt="" border="0"></a></li>
                                                    <li class="even"><a href="http://content.onlineagency.com/c/15/15101/2083_15101.htm">
                                                        <img src="site-files/images/v_2.png" height="196" width="301" alt="" border="0"></a></li>
                                                    <li class="odd"><a href="http://content.onlineagency.com/c/15/15101/26659_15101.htm">
                                                        <img src="site-files/images/v_3.png" height="196" width="301" alt="" border="0"></a></li>

                                                    <li class="even">
                                                        <br />
                                                        <div align="center">
                                                            <form id="Form1" runat="server">
                                                                <fieldset style="width:500px;">
                                                                    <legend>Login</legend>
                                                                    <div class='container'>
                                                                        <asp:Label ID="Name" runat="server" Text="UserName:" CssClass="lbl" />
                                                                        <br />
                                                                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RV1" runat="server"
                                                                            ControlToValidate="txtUserName"
                                                                            ErrorMessage="Please Enter User Name"
                                                                            SetFocusOnError="True">*
                                                                        </asp:RequiredFieldValidator><br />
                                                                    </div>

                                                                    <div class='container'>
                                                                        <asp:Label ID="lblPwd" runat="server" Text="Password:" CssClass="lbl" />
                                                                        <br />
                                                                        <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RV2" runat="server"
                                                                            ControlToValidate="txtPwd"
                                                                            ErrorMessage="Your Password"
                                                                            SetFocusOnError="True">*
                                                                        </asp:RequiredFieldValidator><br />
                                                                    </div>

                                                                    <div class='container'>
                                                                        <asp:Button ID="btnLogIn" runat="server" Text="Sign In"
                                                                            OnClick="btnLogIn_Click" />
                                                                    </div>

                                                                    <div class='container'>
                                                                        <br />
                                                                    </div>
                                                                    <div class='short_explanation'></div>
                                                                    <asp:ValidationSummary ID="ValidationSummary1"
                                                                        runat="server" CssClass="error" />
                                                                    <br />
                                                                    <br />
                                                                    <asp:Label ID="lblMsg" runat="server" Text="" CssClass="lbl" />
                                                                </fieldset>
                                                            </form>
                                                        </div>
                                                    </li>
                                                   
                                                </ul>
                                            </div>



                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                    </div>
                    <div id="footer">
                        <div class="lf_pad">
                            <div class="lf_content_box">
                                <div class="contact_info">
                                    <h1>Contact Us</h1>
                                    <ul>
                                        <li>&nbsp;</li>
                                        <li>CMS With Us &amp; Tours, Inc.</li>
                                        <li>Malaysia</li>
                                        <li>(770) 981-6461</li>
                                        <li>Fax (678) 829-4872</li>
                                    </ul>
                                </div>
                                <div class="lf_link_box_12936102 foot-lnks">
                                    <h1><a href="#" class="lf_marker">Links</a></h1>
                                    <ul>
                                        <li class="odd first"><a href="index.htm">Home</a></li>
                                        <li class="even"><a href="about_us.htm">About Us</a></li>
                                        <li class="odd"><a href="cruises.htm">Cruises</a></li>
                                        <li class="even"><a href="tours.htm">Tours</a></li>
                                        <li class="odd"><a href="vacations.htm">Vacations</a></li>
                                        <li class="odd"><a href="http://content.onlineagency.com/c/15/15101/12936202_15101.htm">Travel Blog</a></li>
                                        <li class="even"><a href="destinations.htm">Destinations</a></li>
                                        <li class="odd"><a href="contact_us.htm">Contact Us</a></li>
                                        <li class="even"><a href="http://content.onlineagency.com/index.aspx?site=15101&amp;tide=173596">Register</a></li>
                                        <li class="odd last"><a href="http://content.onlineagency.com/index.aspx?site=15101&amp;tide=31124&amp;last=1500325">Request Info</a></li>
                                    </ul>
                                </div>
                                <div class="tideFooterBody">
                                    <h3 id="back-to-top">
                                        <a href="#top">
                                            <img src="site-files/images/backtotop.png" /></a></h3>
                                    <script src="site-files/js/jquery-1.11.3.min.js"></script>
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $("#back-to-top").hide();
                                            $(function () {
                                                $(window).scroll(function () {
                                                    if ($(window).scrollTop() > 100) {
                                                        $("#back-to-top").fadeIn(1500);
                                                    }
                                                    else {
                                                        $("#back-to-top").fadeOut(1500);
                                                    }
                                                });
                                                //back to top
                                                $("#back-to-top").click(function () {
                                                    $('body,html').animate({ scrollTop: 0 }, 1000);
                                                    return false;
                                                });
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tidePoweredBy" id="lf_poweredby"></div>
    <!-- TIDE_PAGE_END -->
    <script type="text/javascript">document.write("<img src='/logging/logger.aspx?AI=15101&OI=1500325&UR=" + escape(document.URL) + "&RF=" + escape(document.referrer) + "&UA=" + escape(navigator.userAgent) + "&AL=" + navigator.browserLanguage + "/" + navigator.language + "&SR=" + screen.width + "x" + screen.height + "&CD=" + screen.colorDepth + "' alt='' height='0' width='0'>");</script>

    <script type="text/javascript" src="site-files/js/bootstrap-scrollspy.js"></script>
    <script type="text/javascript" src="site-files/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="site-files/js/jquery-packed.js"></script>
    <script type="text/javascript" src="site-files/js/jquery.idtabs.pack.js"></script>
    <script type="text/javascript" src="site-files/js/jquery.index.js"></script>
    <script type="text/javascript" src="site-files/js/main.js"></script>
    <script type="text/javascript" src="site-files/js/move-top.js"></script>
    <script type="text/javascript" src="site-files/js/lf_site_script.js"></script>

    <script>
        $(".lf_menu").prepend("<label for=show-menu class=show-menu><img src='site-files/images/navigation_menu.png'></label><input type=checkbox id=show-menu role=button>");
    </script>


    <script type="text/javascript">
        $(document).ready(function () {
            $("#lf_container").addClass("new_lf_container");
        });
    </script>
    <script>
        $("#footer .lf_content_box").wrapInner($("<div id='new_lf_content_box'></div>"));
    </script>
    <script>
        $("#header .lf_content_box").wrapInner($("<div id='new_lf_content_box'></div>"));
    </script>



</body>
</html>
