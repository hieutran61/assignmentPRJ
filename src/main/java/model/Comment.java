
package model;
import java.sql.Timestamp;



public class Comment {
    private int commentId;
    private int articleId;
    private String username;
    private Timestamp timeComment;

    public Comment() {
    }

    public Comment(int commentId, int articleId, String username, Timestamp timeComment) {
        this.commentId = commentId;
        this.articleId = articleId;
        this.username = username;
        this.timeComment = timeComment;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Timestamp getTimeComment() {
        return timeComment;
    }

    public void setTimeComment(Timestamp timeComment) {
        this.timeComment = timeComment;
    }
    
    
    
}
