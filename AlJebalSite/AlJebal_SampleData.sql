USE AlJebal;

INSERT INTO Items(ItemName, Category, ItemDescription, ItemPrice)
VALUES('Homous' , 'Appetizers' , 'Garbanzo beans mashed up with fresh garlic, lemon juice, and tahini. Topped with extra virgin olive oil.', 3.99);
 
 
INSERT INTO Items(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Stuffed Grape Leaves' , ' Appetizers' , 'Hand chopped parsley, onions, tomatoes, rice and spices, hand wrapped in a truly tender grape leave, served fire to a platter.' , '3.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Lebnah' , ' Appetizers ' , 'Scoop your warm bread through our cream yogurt cheese. Topped with extra virgin olive oil and sparkled with zaatar.' , '3.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
(' Klbbeh', ' Appetizers ' , 'Bulgur stuff with ground beef,onions and parsley then fried. Served on a platter with our creamy yogurt.' , '3.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Falafel' , ' Appetizers ' , 'Five balls of garbanzo beans and fava beans ground up and mixed with fresh onions, parsley and spices, then quickly deep-fried. Served with our fresh made tahini sauce' , '3.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Veggle Mezza' , ' Appetizers ' , 'Our most popular appetizer, one plate pofeach tabouli, homous, baba ghanouj and two servings of each falafel and stuffed grape leaves, great for two.Double the falafel and stuffed grape leaves for $2 more.' , '3.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Sambosa', ' Appetizers' , 'A delicacy at most, pastry leave filled with your choice of beef, chicken pr vegetables. Quickly deep-fire and served hot.' , '1.50' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Beef shish kabkb' , ' lunch Entrees' , 'Ground beef sirloin mixed with onion, parsley and exotic spices. Cooked on an open fire. For fire roasted tomatoes.' , '6.99' );

 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Beef shish kabkb' , 'Entrees' , 'Ground beef sirloin mixed with onion, parsley and exotic spices. Cooked on an open fire. For fire roasted tomatoes.' , '9.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Chicken shish kabob' , 'Entrees' , 'Ground chicken breast mixed with onions, parsley and exotic spices. Cooked on an open fire. For fire roasted tomatoes, add$1' , '9.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Chicken shish kabob' , ' lunch Entrees' , 'Groud chicken breast mixed with onions, parsley and exotic spices. Cooked on an open fire. For fire roasted tomatoes, add$1' , '6.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Chicken tikka kabob' , ' lunch  Entrees' , '100% chicken breast seasoned with our special spices. Cooked on an open fire. For roasted tomatoes, add$1' , '8.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Chicken tikka kabob' , ' Entrees' , '100% chicken breast seasoned with our special spices. Cooked on an open fire. For roasted tomatoes, add$1' , '10.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Chickenyogurt tandoori tikka kabob' , 'lunch Entrees' , 'Ground beef sirloin mixed with onion, parsley and exotic spices. Cooked on an open fire. For fire roasted tomatoes.' , '8.99' );

INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Chickenyogurt tandoori tikka kabob' , 'Entrees' , 'Ground beef sirloin mixed with onion, parsley and exotic spices. Cooked on an open fire. For fire roasted tomatoes.' , '10.99' );

INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Lamb shawarma' , 'lunch Entrees' , 'Grilled lamb sirloin slices seasoned with our special shawarma swasoning' , '6.99' );
 
INSERT INTO Items
(ItemName, Category , ItemDescription , ItemPrice)
VALUES
('Lamb shawarma' , 'Entrees' , 'Grilled lamb sirloin slices seasoned with our special shawarma swasoning' , '9.99' );


/* Insert Customers */

INSERT INTO Customer
(   CFirstName, CLastName , CAddress , Cellphone, Email, DWTRA)
VALUES
('Ali' , 'Buhlaiqa' , '643 Knox st N apt 88 Monmouth, OR' , '503-5548-582', 'ali@buhlaiqa.com' , '1' );
 
INSERT INTO Customer
(   CFirstName, CLastName , CAddress , Cellphone, Email, DWTRA)
VALUES
('Tom' , 'J' , '643 Knox st N  apt 86 Monmouth, OR' , '503-2148-787', 'Jqom@Hotmail.com' , '0' );
 
INSERT INTO Customer
(   CFirstName, CLastName , CAddress , Cellphone, Email, DWTRA)
VALUES
('bob' , 'Helton' , '245 Monmouth ave W , OR' , '741-5448-772', 'bob@gmail.com' , '1' );
 
INSERT INTO Customer
(   CFirstName, CLastName , CAddress , Cellphone, Email, DWTRA)
VALUES
('Mohammed' , 'Bohlahiqa' , '584 ' , '584-777-2513', 'xyz@hotmail.com' , '0' );
 
INSERT INTO Customer
(   CFirstName, CLastName , CAddress , Cellphone, Email, DWTRA)
VALUES
('Ali' , 'Buhlaiqa' , '643 Knox st N Monmouth, OR' , '503-5548-582', 'ali@buhlaiqa.com' , '1' );
 
INSERT INTO Customer
(   CFirstName, CLastName , CAddress , Cellphone, Email, DWTRA)
VALUES
('Adrian' , 'Lodder' , '643 Knox st N Monmouth, OR' , '503-1111-582', 'a@lod.der' , '1' );
 
 /* insert Tables*/
INSERT INTO RestTable
	(Chair)
VALUES
	(5);

INSERT INTO RestTable
	(Chair)
VALUES
	(4);
 
INSERT INTO RestTable
	(Chair )
VALUES
	( 4 );
 
INSERT INTO RestTable
	(Chair)
VALUES
	(6);

INSERT INTO RestTable
	(Chair )
VALUES
	( 5 );

INSERT INTO RestTable
	(Chair )
VALUES
	(4);

INSERT INTO RestTable
	(Chair )
VALUES
	(6 );