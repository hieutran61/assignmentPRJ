package model;


public class Like {
    private int likeId;
    private String articleId;
    private String username;

    public Like() {
    }

    public Like(int likeId, String articleId, String username) {
        this.likeId = likeId;
        this.articleId = articleId;
        this.username = username;
    }

    public int getLikeId() {
        return likeId;
    }

    public void setLikeId(int likeId) {
        this.likeId = likeId;
    }

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
    
}
