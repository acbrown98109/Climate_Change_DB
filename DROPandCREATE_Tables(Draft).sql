-- Drop and recreate CustomerInfo
DROP TABLE IF EXISTS CustomerInfo;
CREATE TABLE CustomerInfo (
    CustomerID INT PRIMARY KEY,
    Member BOOLEAN,
    Name VARCHAR(512),
    Email VARCHAR(512),
    BillingAddress VARCHAR(512),
    Phone VARCHAR(25),
    DateAdded DATE
);

-- Drop and recreate SaleLineItem (basic item details)
DROP TABLE IF EXISTS SaleLineItem;
CREATE TABLE SaleLineItem (
    SaleLineItemID INT PRIMARY KEY,
    Name VARCHAR(512),
    Description VARCHAR(512),
    Units VARCHAR(512),
    UnitPrice NUMERIC(14,2),
    DateEntered DATE
);

-- Drop and recreate Invoice (invoice header only)
DROP TABLE IF EXISTS Invoice;
CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    DateOrdered DATE,
    ShippingAddress VARCHAR(512),
    DateShipped DATE,
    FOREIGN KEY (CustomerID) REFERENCES CustomerInfo(CustomerID)
);

-- Create join table sale_info
DROP TABLE IF EXISTS sale_info;
CREATE TABLE sale_info (
    InvoiceID INT,
    SaleLineItemID INT,
    quantity INT,
    total_cost_per_items NUMERIC(14,2),
    total_quantity INT,
    invoice_total NUMERIC(14,2),
    PRIMARY KEY (InvoiceID, SaleLineItemID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID),
    FOREIGN KEY (SaleLineItemID) REFERENCES SaleLineItem(SaleLineItemID)
);

-- Drop and recreate Event
DROP TABLE IF EXISTS Event;
CREATE TABLE Event (
    EventID INT PRIMARY KEY,
    Username VARCHAR(64),
    Title VARCHAR(64),
    PostedDate DATE,
    Description VARCHAR(255),
    EventDate DATE,
    Approved BOOLEAN,
    FOREIGN KEY (Username) REFERENCES Members(Username)
);

-- Drop and recreate Comments
DROP TABLE IF EXISTS Comments;
CREATE TABLE Comments (
    CommentID INT PRIMARY KEY,
    Username VARCHAR(64),
    Comment VARCHAR(1000),
    DateSubmitted DATE,
    Approved BOOLEAN,
    FOREIGN KEY (Username) REFERENCES Members(Username)
);

-- Drop and recreate Members
DROP TABLE IF EXISTS Members;
CREATE TABLE Members (
    Username VARCHAR(64) PRIMARY KEY,
    CustomerID INT
);

-- Drop and recreate Resources
DROP TABLE IF EXISTS Resources;
CREATE TABLE Resources (
    ResourceID INT PRIMARY KEY,
    Username VARCHAR(64),
    Description VARCHAR(255),
    URL VARCHAR(255),
    SubmittedDate DATE,
    Approved BOOLEAN,
    FOREIGN KEY (Username) REFERENCES Members(Username)
);
