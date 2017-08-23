use Customer

create table c_category
(
ID int,
categoryname nvarchar(50),
primary key(ID)
)
create table c_subcategory(
ID int,
subcategoryname nvarchar(50),
categoryID int,
primary key(ID),
constraint FK_categoryID foreign key(categoryID) references c_category(ID)
);
create table department
(
ID int,
departmentname nvarchar(50),
primary key(ID)
);

create table title
(
ID int,
titlename nvarchar(50),
departmnetID int,
primary key(ID),
constraint FK_departmnetID foreign key(departmnetID) references department(ID)
);
create table payment_term
(
ID int,
term_name nvarchar(50),
primary key(ID)
);

create table ourworker
(
ID int,
w_name nvarchar(50),
pssword nvarchar(50),
mail nvarchar(50),
phonenumber int,
primary key(ID)
);
create table adress
(
ID int,
w_name nvarchar(50),
pssword nvarchar(50),
mail nvarchar(50),
phonenumber int,
primary key(ID)
);
create table costumer_worker
(
ID int,
cw_name nvarchar(50),
departmnetID int,
titleID int,
primary key(ID),
constraint FK_departmnetID foreign key(departmnetID) references department(ID),
constraint FK_titleID foreign key(titleID) references title(ID),
);
create table customer(
ID int,
c_name nvarchar(50),
capital nvarchar(50),
city nvarchar(50),
town nvarchar(50),
postcode int,
telephone int,
fax int,
webadress nvarchar(50),
payment_termID int,
representaryID int,
primary key(ID),
constraint FK_payment_termID foreign key(payment_termID) references payment_term(ID),
constraint FK_representaryID foreign key(representaryID) references ourworker(ID)
);
