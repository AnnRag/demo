package com.shop.demo.sevice;

import com.shop.demo.errors.BooksException;
import com.shop.demo.impl.domain.Book;
import com.shop.demo.impl.repository.BooksRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import java.util.List;

@Slf4j
@Service
public class BooksService {

    @Autowired
    private BooksRepository repository;

    public List<Book> getBookByTitle(String title) throws BooksException {
        try {
            return repository.getBooksByTitle(title);
        } catch (Throwable e) {
            throw new BooksException(e);
        }
    }

    public MultiValueMap<String, Book> booksGroupByGenre() {
        List<Book> books = repository.findAll();
        MultiValueMap<String, Book> booksGroupByGenre = new LinkedMultiValueMap<>();
        books.forEach(book -> booksGroupByGenre.add(book.getGenre(), book));
        return booksGroupByGenre;
    }

}
