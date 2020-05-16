package com.shop.demo.impl.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity @Table(name = "books")
public class Book {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Integer id;

    @Column
    private String title;

    private String author;
    @Column
    private String genre;
    @Column
    private Integer height;
    @Column
    private String publisher;
}
