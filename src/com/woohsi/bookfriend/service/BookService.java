package com.woohsi.bookfriend.service;

import com.woohsi.bookfriend.po.Book;
import com.woohsi.bookfriend.po.BookForm;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface BookService {
    public String saveBook(BookForm bookForm, HttpServletRequest request);
    public String queryBook(Model model, Integer bkid);
    public String updateBook(Book book);
    public String deleteBook(Integer bkid);
    public String listAllBooks(Model model);

    public String listMySell(Model model, HttpSession session);

    public String searchBook(Model model, String keyword);

    public String listMyAll(Model model, HttpSession session);

    public String check(Model model);

    public String setOnSell(Integer bkid);
}
