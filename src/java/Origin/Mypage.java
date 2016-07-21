/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Origin;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.conf.ConfigurationBuilder;

/**
 *
 * @author Wataru
 */
public class Mypage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private final String CONSUMER_KEY ="NXYbCSHJPbW6N6ZKpTm9YsgxR";
    private final String CONSUMER_SECRET="mruHYz5w3R08IjyDBxb3OSwptl8YEOaSBRlvM5GQmhNZztnaG8";
    private final String ACCESS_TOKEN ="748695816630525952-5xBNVajY4rnNHRFlx8K9A0RKGUU85gu";
    private final String ACCESS_TOKEN_SECRET ="Z52R8V6vAKEVFEziJipgOftGV8JCabPgxbM7FZVMVPvyi";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, TwitterException {
        response.setContentType("text/html;charset=UTF-8");
            /* TODO output your page here. You may use following sample code. */
            ConfigurationBuilder cb = new ConfigurationBuilder();
            cb.setDebugEnabled(true);
            cb.setOAuthConsumerKey(CONSUMER_KEY);
            cb.setOAuthConsumerSecret(CONSUMER_SECRET);
            cb.setOAuthAccessToken(ACCESS_TOKEN);
            cb.setOAuthAccessTokenSecret(ACCESS_TOKEN_SECRET);
            TwitterFactory tf = new TwitterFactory(cb.build());
            Twitter twitter = tf.getInstance();
            User user = twitter.verifyCredentials();
            request.setCharacterEncoding("UTF-8");
            HttpSession hs = request.getSession();
            UserData ud = (UserData)hs.getAttribute("ud");
            String search= ud.getLine() + "遅延";
        //String search= request.getParameter("searchtweet");
            Query query = new Query();
            query.setCount(100);
            query.setQuery(search);
            QueryResult queryresult = null;
        try{    
            queryresult = twitter.search(query);
        }catch(TwitterException e1){
            e1.printStackTrace();
        }
        ArrayList<String> userID = new ArrayList<>();
            for(Status tweet : queryresult.getTweets()){
                userID.add(tweet.getUser().getScreenName());
            }
        ArrayList<String> profileimg = new ArrayList<>();
            for(Status tweet : queryresult.getTweets()){
                profileimg.add(tweet.getUser().getBiggerProfileImageURL());
            }
        ArrayList<String> username = new ArrayList<>();
            for(Status tweet : queryresult.getTweets()){
                username.add(tweet.getUser().getName()+"<br>"+"@"+tweet.getUser().getScreenName());
            }
        ArrayList<String> usernameURL = new ArrayList<>();
            for(Status tweet : queryresult.getTweets()){
            username.add(tweet.getUser().getURL());
            }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
                
        ArrayList<String> resulttweet = new ArrayList<>();
            for(Status tweet : queryresult.getTweets()){
                resulttweet.add(tweet.getText()+"<br>"+sdf.format(tweet.getCreatedAt()));
            }
            request.setAttribute("search", search);
            request.setAttribute("userID", userID);
            request.setAttribute("profileimg", profileimg);
            request.setAttribute("username", username);
            request.setAttribute("resulttweet", resulttweet);
            request.setAttribute("usernameURL", usernameURL);
            request.getRequestDispatcher("/mypage.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (TwitterException ex) {
            Logger.getLogger(Mypage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (TwitterException ex) {
            Logger.getLogger(Mypage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
