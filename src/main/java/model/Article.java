/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Timestamp;   

public class Article {
    private int articleId;
    private String title;
    private String description;
    private String content;
    private String image;
    private String author;
    private int likes;
    private Timestamp timePost;
    private int cateId;

    public Article() {
    }

    public Article(int articleId, String title, String description, String content, String image, String author, int likes, Timestamp timePost, int cateId) {
        this.articleId = articleId;
        this.title = title;
        this.description = description;
        this.content = content;
        this.image = image;
        this.author = author;
        this.likes = likes;
        this.timePost = timePost;
        this.cateId = cateId;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public Timestamp getTimePost() {
        return timePost;
    }

    public void setTimePost(Timestamp timePost) {
        this.timePost = timePost;
    }

    public int getCateId() {
        return cateId;
    }

    public void setCateId(int cateId) {
        this.cateId = cateId;
    }
    
    
    public static void main(String[] args) {
        Timestamp time = new Timestamp(System.currentTimeMillis());

        System.out.println(time);
    }
            
            
            
            
     
    
}
