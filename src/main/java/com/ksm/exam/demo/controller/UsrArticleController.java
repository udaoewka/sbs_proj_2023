package com.ksm.exam.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ksm.exam.demo.vo.Article;

@Controller
public class UsrArticleController {
	private int articlesLastId;
	private List<Article> articles;
	
	public UsrArticleController() {
		articles = new ArrayList<>();
		articlesLastId = 0;
	}
	
	@RequestMapping("/usr/article/doAdd")
	@ResponseBody
	public Article doAdd(String title, String body) {
		int id = articlesLastId + 1;
		Article article = new Article(id, title, body);
		articles.add(article);
		return article;
	}
	
	@RequestMapping("/usr/article/getArticles")
	@ResponseBody
	public List<Article> getArticles() {
		return articles;
	}
	
}
