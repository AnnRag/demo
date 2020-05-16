package com.shop.demo.controller;

import com.shop.demo.errors.BooksException;
import com.shop.demo.impl.domain.Book;
import com.shop.demo.sevice.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/books")
public class BooksController {

    @Autowired
    private BooksService service;

    @GetMapping(value = "")
    public ResponseEntity<List<Book>> getBooksByTitle(
            @RequestParam(value = "title") String title) throws BooksException {
        List<Book> books = service.getBookByTitle(title);
        HttpStatus status = books.isEmpty() ? HttpStatus.NOT_FOUND : HttpStatus.OK;
        return new ResponseEntity<>(books, status);
    }

}
