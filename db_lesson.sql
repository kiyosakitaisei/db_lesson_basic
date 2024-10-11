
-- Q1
mysql> CREATE TABLE departments (
     department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(20) NOT NULL,
     created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
     updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
     );


-- Q2
mysql> ALTER TABLE people ADD department_id INT UNSIGNED NOT NULL AFTER email;



-- Q3
-- departments
mysql> INSERT INTO departments (name) 
    VALUES
    ('営業'),
    ('開発'),
    ('経理'),
    ('人事'),
    ('情報システム');


-- people
mysql> INSERT INTO people (name, email, department_id, age, gender)
     VALUES
     ('あい', 'ai@gizumo.jp', 1, 10, 2),
     ('うえ', 'ue@gizumo.jp', 1, 20, 1),
     ('おか', 'oka@gizumo.jp', 1, 30, 2),
     ('きく', 'kiku@gizumo.co.jp', 2, 40, 1),
     ('けこ', 'keko@gizumo.co.jp', 2, 50, 1),
     ('さし', 'sasi@gizumo.jp', 2, 60, 2),
     ('すせ', 'suse@gizumo.jp', 2, 70, 1),
     ('そた', 'sota@gizumo.jp', 3, 80, 2),
     ('ちつ', 'titu@gizumo.co.jp', 4, 90, 1),
     ('てと', 'teto@gizumo.co.jp', 5, 100, 1);



-- reports
mysql> INSERT INTO reports (person_id, content)
    VALUES
    (1, '1234567890'),
    (2, '0987654321'),
    (3, 'あいうえおかきくけこ'),
    (4, 'さしすせそたちつてと'),
    (6, 'なにぬねのはひふへほ'),
    (17, 'まみむめもらりるれろ'),
    (18, 'がぎぐげござじずぜぞ'),
    (19, 'だぢづでどばびぶべぼ'),
    (20, 'ぱぴぷぺぽあいうえお'),
    (21, 'ああああああああああ');



-- Q4
     mysql> UPDATE people SET department_id = 1 WHERE name IN ('鈴木たかし','田中ゆうこ','福田だいすけ');
     mysql> UPDATE people SET department_id = 2 WHERE name IN ('豊島はなこ','不思議沢みちこ');



--  Q5
mysql> SELECT name,age FROM people WHERE gender = 1 ORDER BY age DESC;


-- Q6　テーブル・レコード・カラムという3つの単語を適切に使用して、下記のSQL文を日本語で説明してください。
▼SELECT
  `name`, `email`, `age`
テーブルからカラム名name、email、ageのレコードに記載されている値を表示させることができる。

▼FROM
  `people`
fromはどのテーブルからデータを検索するかを指定する項目で指定したテーブルのレコード、カラムの値の検索や編集を行うことができる。

▼WHERE
  `department_id` = 1
テーブルからカラム名「department_id」でレコードの値が１のデータを抽出し表示させることができる。

▼ORDER BY
  `created_at`;
ordre byでテーブル内のデータを昇順または降順に整列させることができる。
カラム名created_atはレコードの作成日時を示しており、上記の指示はレコードの作成日時を昇順または降順に表示させる指示となる。