package com.shop.demo.impl.repository;

import com.shop.demo.impl.domain.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BooksRepository extends JpaRepository<Book, Long> {

    @Query(value = "select * from books where title=:title", nativeQuery = true)
    List<Book> getBooksByTitle(@Param("title") String title);

}
