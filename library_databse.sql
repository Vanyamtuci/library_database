CREATE TABLE author
(
	author_id int PRIMARY KEY,
	full_name text
)

CREATE TABLE book
(
    book_id integer NOT NULL,
    title text NOT NULL,
    isbn character varying(32) NOT NULL,
    author_id integer NOT NULL,
	
	CONSTRAINT PK_book_book_id PRIMARY KEY(book_id),
	CONSTRAINT FK_publisher_book FOREIGN KEY(author_id) REFERENCES author(author_id)
);a

INSERT INTO book
VALUES
(1,'Война и мир', '9785389062566',1),
(2,'Идиот', '9785171479008', 2),
(3,'Мертвые души', '9785170878895',3)

INSERT INTO author
VALUES
(1,'Лев Толстой'),
(2, 'Федор Достоевский'),
(3,'Николай Гоголь')


