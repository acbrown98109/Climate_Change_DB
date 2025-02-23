DROP TABLE IF EXISTS CustomerInfo,

CREATE TABLE CustomerInfo (
    CustomerID	INT,
    Member	BOOLEAN,
     Name	VARCHAR(512),
    Email	VARCHAR(512),
    BillingAddress	VARCHAR(512),
    Phone	VARCHAR(25),
    Date added	DATE
),

DROP TABLE IF EXISTS SaleLineItem,

CREATE TABLE SaleLineItem (
    InvoiceItemID	INT,
    Name	VARCHAR(512),
    Description	VARCHAR(512),
    Units	VARCHAR(512),
    Unit Price	NUMBER(14,2),
    Qty	INT,
    Date entered	DATE
),

DROP TABLE IF EXISTS Invoice,

CREATE TABLE Invoice (
    InvoiceID	VARCHAR(512),
    CustomerID	INT,
    Date Ordered	DATE,
    Shipping Address	VARCHAR(512),
    Date Shipped	DATE,
    InvoiceItemID	INT,
    SaleLineItem1	VARCHAR(512),
    Item1Quantity	INT,
    InvoiceItemID	INT,
    SaleLineItem2	VARCHAR(512),
    Item2Quantity	INT,
    TotalItems	INT,
    TotalSales	NUMBER(14,2)
    CONSTRAINT "FK_Invoice.CustomerID"
    FOREIGN KEY ("CustomerID")
      REFERENCES "CustomerInfo"("INT"),
  CONSTRAINT "FK_Invoice.CustomerID"
    FOREIGN KEY ("CustomerID")
      REFERENCES "Members "("CustomerID")
),

CREATE TABLE "Event" (
  "EventID " INT,
  "Username " VARCHAR,
  "Title" VARCHAR(64),
  "PostedDate" DATE,
  "Description" VARCHAR,
  "EventDate" DATE,
  "Approved" BOOTLEAN,
  CONSTRAINT "FK_Event.Title"
    FOREIGN KEY ("Title")
      REFERENCES "Members "("Username")
);

CREATE TABLE "Comments" (
  "CommentID" INT,
  "Username " VARCHAR,
  "Comment" VARCHAR,
  "DateSubmitted" DATE,
  "Approved" BOOTLEAN,
  CONSTRAINT "FK_Comments.Username "
    FOREIGN KEY ("Username ")
      REFERENCES "Members "("Username")
);
CREATE TABLE "Members " (
  "Username" VARCHAR(64),
  "CustomerID" INT
);
CREATE TABLE "Resources" (
  "ResourceID" INT,
  "Username " VARCHAR,
  "Description" VARCHAR,
  "URL" VARCHAR,
  "SubmittedDate" DATE,
  "Approved" BOOTLEAN,
  CONSTRAINT "FK_Resources.Username "
    FOREIGN KEY ("Username ")
      REFERENCES "Members "("Username")
);














CREATE INDEX "CustomerID" ON  "CustomerInfo" ("INT");

CREATE INDEX "Member" ON  "CustomerInfo" ("BOOTLEAN");

CREATE INDEX "DateAdded" ON  "CustomerInfo" ("DATE");

CREATE INDEX "Email" ON  "CustomerInfo" ("VARCHAR");

CREATE INDEX "Name" ON  "CustomerInfo" ("VARCHAR");

CREATE INDEX "BillingAddress" ON  "CustomerInfo" ("VARCHAR");

CREATE INDEX "Phone" ON  "CustomerInfo" ("VARCHAR(20-25)");
