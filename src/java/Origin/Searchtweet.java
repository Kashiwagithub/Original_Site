/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Origin;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import twitter4j.*;
import twitter4j.conf.ConfigurationBuilder;

/**
 *
 * @author Wataru
 */
public class Searchtweet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
        private final String CONSUMER_KEY ="****";
        private final String CONSUMER_SECRET="****";
        private final String ACCESS_TOKEN ="****";
        private final String ACCESS_TOKEN_SECRET ="****";
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, TwitterException {
        response.setContentType("text/html;charset=UTF-8");
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
        String search= "遅延"+request.getParameter("searchtweet");
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
            request.getRequestDispatcher("/searchtweet.jsp").forward(request, response);
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
                java.util.logging.Logger.getLogger(Searchtweet.class.getName()).log(Level.SEVERE, null, ex);
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
                java.util.logging.Logger.getLogger(Searchtweet.class.getName()).log(Level.SEVERE, null, ex);
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