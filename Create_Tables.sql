-- Members Table
CREATE TABLE Members (
    Username VARCHAR(64) PRIMARY KEY,
    CustomerID INT
);

-- Event Table
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

-- Comments Table
CREATE TABLE Comments (
    CommentID INT PRIMARY KEY,
    Username VARCHAR(64),
    Comment VARCHAR(1000),
    DateSubmitted DATE,
    Approved BOOLEAN,
    FOREIGN KEY (Username) REFERENCES Members(Username)
);

-- CustomerInfo Table
CREATE TABLE CustomerInfo (
    CustomerID INT PRIMARY KEY,
    Member BOOLEAN,
    Name VARCHAR(255),
    Email VARCHAR(255),
    BillingAddress VARCHAR(255),
    Phone VARCHAR(25),
    DateAdded DATE
);

-- Invoice Table (Invoice header only)
CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    DateOrdered DATE,
    ShippingAddress VARCHAR(255),
    DateShipped DATE,
    FOREIGN KEY (CustomerID) REFERENCES CustomerInfo(CustomerID)
);

-- SaleLineItem Table (Item details only)
CREATE TABLE SaleLineItem (
    SaleLineItemID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description VARCHAR(255),
    Units VARCHAR(50),
    UnitPrice NUMERIC(14,2),
    DateEntered DATE
);

-- Join Table: sale_info (links Invoice and SaleLineItem)
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

-- Resources Table
CREATE TABLE Resources (
    ResourceID INT PRIMARY KEY,
    Username VARCHAR(64),
    Description VARCHAR(255),
    URL VARCHAR(255),
    SubmittedDate DATE,
    Approved BOOLEAN,
    FOREIGN KEY (Username) REFERENCES Members(Username)
);

-- (Optional) Entity Table for inventory/items if needed
CREATE TABLE Entity (
    InvoiceItem VARCHAR(255) PRIMARY KEY,
    NumOfItems VARCHAR(50),
    PricePerItem NUMERIC(14,2),
    OnHand INT,
    InventoryDate DATE
);
