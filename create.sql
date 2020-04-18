 
CREATE TABLE Category(
    category_name VARCHAR2(20) NOT NULL);
ALTER TABLE Category
    ADD CONSTRAINT category_name_pk PRIMARY KEY(category_name);    
    
CREATE TABLE Audience(
    audience_name VARCHAR2(20) NOT NULL);
ALTER TABLE Audience
    ADD CONSTRAINT  audience_name_pk PRIMARY KEY( audience_name);
    
CREATE TABLE App(
    app_name VARCHAR2(50) NOT NULL,
    category_name VARCHAR2(20) NOT NULL,
    audience_name VARCHAR2(20) NOT NULL,
    price NUMBER NOT NULL,
    reviews  INT NOT NULL);
ALTER TABLE App
    ADD CONSTRAINT app_name_pk PRIMARY KEY(app_name); 
    
ALTER TABLE App
    ADD CONSTRAINT category_name_fk FOREIGN KEY(category_name) REFERENCES Category(category_name);
ALTER TABLE App
    ADD CONSTRAINT audience_name_fk FOREIGN KEY(audience_name) REFERENCES Audience(audience_name);

    
