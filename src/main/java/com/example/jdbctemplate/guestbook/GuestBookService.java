package com.example.jdbctemplate.guestbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class GuestBookService {
    @Autowired
    private GuestBookDao dao;

    // 방명록 작성
    public void addBook(GuestBook gb) {
        dao.insert(gb);
    }

    // 번호로 검색
    public GuestBook getBook(int num) {
        System.out.println(dao.select(num));
        return dao.select(num);
    }

    // 방명록 수정
    public void editBook(GuestBook gb) {
        dao.update(gb);
    }

    // 방명록 삭제
    public void delBook(int num) {
        dao.delete(num);
    }

    // 전체 목록
    public List<GuestBook> getAll() {
        return dao.selectAll();
    }

}
