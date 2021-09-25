<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Dashboard</title>
        <link rel="stylesheet" href="./styles.css">
   <style>
            a{
                text-decoration: none;
                color: black;
            }
            a:active{
                color: purple;
                font-size: 10px;
            }
            input[type=text]{
    padding: 8px;
    margin-left: 40px;
    margin-bottom: 10px;
    align-content: center;
    border-radius: 10px;
    border-color: bisque
}

        </style>
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <link href="https://fonts.googleapis.com/css?family=DM+Sans:400,500,700&display=swap" rel="stylesheet">
        <div class="task-manager">
            <div class="left-bar">
                <div class="upper-part">
                    <div class="actions">
                        <div class="circle"></div>
                        <div class="circle-2"></div>
                    </div>
                </div>
                
                <center><a href="profilePage.jsp"><img src="https://img.icons8.com/ios/50/000000/user-male-circle.png"/></a>
                </center>
                <div class="left-content">
                    <ul class="action-list">
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor"
                                 stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="feather feather-inbox"
                                 viewBox="0 0 24 24">
                            <path d="M22 12h-6l-2 3h-4l-2-3H2" />
                            <path
                                d="M5.45 5.11L2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z" />
                            </svg>
                            <a  href="Dashboard.jsp" ><span>Home</span></a>
                                
                            
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                 class="feather feather-star">
                            <polygon
                                points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" />
                            </svg>
                            <a style="text-decoration: none" href="proPage.jsp"><span> Premium</span></a>
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor"
                                 stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="feather feather-calendar"
                                 viewBox="0 0 24 24">
                            <rect width="18" height="18" x="3" y="4" rx="2" ry="2" />
                            <path d="M16 2v4M8 2v4m-5 4h18" />
                            </svg>
                          
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Downloads</span></a>
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                 class="feather feather-hash">
                            <line x1="4" y1="9" x2="20" y2="9" />
                            <line x1="4" y1="15" x2="20" y2="15" />
                            <line x1="10" y1="3" x2="8" y2="21" />
                            <line x1="16" y1="3" x2="14" y2="21" /></svg>
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Player</span></a>
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                 class="feather feather-users">
                            <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" />
                            <circle cx="9" cy="7" r="4" />
                            <path d="M23 21v-2a4 4 0 0 0-3-3.87" />
                            <path d="M16 3.13a4 4 0 0 1 0 7.75" /></svg>
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Playlist</span></a>
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor"
                                 stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="feather feather-trash"
                                 viewBox="0 0 24 24">
                            <path d="M3 6h18m-2 0v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2" />
                            </svg>
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Recently Play Songs</span></a>
                        </li>
                    </ul>
                    <ul class="category-list">
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                 class="feather feather-users">
                            <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" />
                            <circle cx="9" cy="7" r="4" />
                            <path d="M23 21v-2a4 4 0 0 0-3-3.87" />
                            <path d="M16 3.13a4 4 0 0 1 0 7.75" /></svg>
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Fav Artist</span></a>
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor"
                                 stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="feather feather-sun"
                                 viewBox="0 0 24 24">
                            <circle cx="12" cy="12" r="5" />
                            <path
                                d="M12 1v2m0 18v2M4.22 4.22l1.42 1.42m12.72 12.72l1.42 1.42M1 12h2m18 0h2M4.22 19.78l1.42-1.42M18.36 5.64l1.42-1.42" />
                            </svg>
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Album</span></a>
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                 class="feather feather-trending-up">
                            <polyline points="23 6 13.5 15.5 8.5 10.5 1 18" />
                            <polyline points="17 6 23 6 23 12" /></svg>
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Radio</span></a>
                        </li>
                        <li class="item">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                 class="feather feather-zap">
                            <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2" /></svg>
                            <a style="text-decoration: none"  href="downloadPage.jsp"><span>Concert</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="page-content">
                <div class="header">Hits</div>
                <div class="content-categories">
                    <div class="label-wrapper" onclick="deskOne();">
                        <input class="nav-item" name="nav" type="radio" id="opt-1">
                        <label class="category" for="opt-1">All</label>
                    </div>
                    <div class="label-wrapper" onclick="deskTwo();">
                        <input class="nav-item" name="nav" type="radio" id="opt-2" checked>
                        <label class="category" for="opt-2">Daily Hits</label>
                    </div>
                    <div class="label-wrapper" onclick="deskOne();">
                        <input class="nav-item" name="nav" type="radio" id="opt-3">
                        <label class="category" for="opt-3">Weekly Hits</label>
                    </div>
                    <div class="label-wrapper"onclick="deskTwo();">
                        <input class="nav-item" name="nav" type="radio" id="opt-4">
                        <label class="category" for="opt-4">Monthly Hits</label>
                    </div>
                </div>
                <div class="tasks-wrapper">
                    <div class="task">
                        <label for="item-1">
                            <span class="label-text" id="1">Dashboard Design Implementation</span>
                        </label>
                        <span class="tag approved">Approved</span>
                    </div>
                    <div class="task">
                        <label for="item-2">
                            <span class="label-text" id="2">Create a userflow</span>
                        </label>
                        <span class="tag progress">In Progress</span>
                    </div>
                    <div class="task">
                        <label for="item-3">
                            <span class="label-text" id="3">Application Implementation</span>
                        </label>
                        <span class="tag review">In Review</span>
                    </div>
                    <div class="task">
                        <label for="item-4">
                            <span class="label-text" id="4">Create a Dashboard Design</span>
                        </label>
                        <span class="tag progress">In Progress</span>
                    </div>
                    <div class="task">
                        <label for="item-5">
                            <span class="label-text" id="5">Create a Web Application Design</span>
                        </label>
                        <span class="tag approved">Approved</span>
                    </div>
                    <div class="task">
                        <label for="item-6">
                            <span class="label-text" id="6">Interactive Design</span>
                        </label>
                        <span class="tag review">In Review</span>
                    </div>
                    <div class="header upcoming">Latest Hindi</div>
                    <div class="task">
                        <label for="item-7">
                            <span class="label-text" id="7">Dashboard Design Implementation</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                    <div class="task">
                        <label for="item-8">
                            <span class="label-text" id="8">Create a userflow</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                                        <div class="header upcoming">latest English</div>

                    <div class="task">
                        <label for="item-9">
                            <span class="label-text" id="9">Application Implementation</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                    <div class="task">
                        <label for="item-10">
                            <span class="label-text" id="10">Create a Dashboard Design</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                                                    <div class="header upcoming">Bollywood On Loop</div>

                    <div class="task">
                        <label for="item-9">
                            <span class="label-text" id="9">Application Implementation</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                    <div class="task">
                        <label for="item-10">
                            <span class="label-text" id="10">Create a Dashboard Design</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                                                                <div class="header upcoming">Urban Punjabi Tadka</div>

                    <div class="task">
                        <label for="item-9">
                            <span class="label-text" id="9">Application Implementation</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                    <div class="task">
                        <label for="item-10">
                            <span class="label-text" id="10">Create a Dashboard Design</span>
                        </label>
                        <span class="tag waiting">Waiting</span>
                    </div>
                </div>
            </div>

            <div class="right-bar">
                <div class="top-part">
                   <svg  xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                         stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                         class="feather feather-users">
                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" />
                    <circle cx="9" cy="7" r="4" />
                    <path d="M23 21v-2a4 4 0 0 0-3-3.87" />
                    <path d="M16 3.13a4 4 0 0 1 0 7.75" /></svg>

                </div>
                <div class="header">&nbsp;&nbsp;&nbsp;Comments</div>

                <div class="right-content">

                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection myconn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicauthenticate", "root", "");
                        Statement mystatement = myconn.createStatement();
                        ResultSet myresults = mystatement.executeQuery("Select * from skybeatscomments");

                        try {

                            out.print("<h4>");
                            while (myresults.next()) {
                                String color = myresults.getString("color");
                                String com = myresults.getString("comdata");
                                if (com != null) {
                    %> <div class="task-box <%=color%>"><%
                        %> <div class="description-task"><%
                            %><div class="task-name"><%                                out.print(com);
                                %> <div class="time"><%
                                    out.print(myresults.getString("time"));
                                    %></div><%
                                %></div><%
                            %></div><%
                        %></div><%                                    }else{
                        break;
    }

                                }
                                out.print("</h4>");

                            } catch (SQLException e) {                                
                                System.out.println(e);
                            }
                        %>
                </div>
                        <form class="footer" action="comdb.jsp">
                    <input type="text" name="comment" required="true">
                    <input type="submit" name="submit" value="Send">
                </form>                           
            </div> 
            
        </div>
        <!-- partial -->
        <script type="text/javascript">
            function deskOne() {
                var songsName = ["See You Again", "Sorry", "Uptown Funk", "Blank Space", "Shake It Off", "Lean On", "Hello", "Roar", "All About That Bas", "Dark Horse", "Counting Stars", "Chandelier", "What Do You Mean?"];
                for (var i = 1; i <= 10; i++) {
                    document.getElementById(i + "").innerHTML = songsName[i - 1];
                }
            }
            function deskTwo() {
                var songsName = ["Counting Stars", "What Do You Mean?", "Thinking Out Loud", "Work From Home", "Love Me Like You Do", "This Is What You Came For", "Let Her Go", "Waka Waka", "Worth It", "Love The Way You Lie"];
                for (var i = 1; i <= 10; i++) {
                    document.getElementById(i + "").innerHTML = songsName[i - 1];
                }
            }
        </script>
    </body>
</html>
