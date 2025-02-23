CREATE TABLE "Members " (
  "Username" VARCHAR(64),
  "CustomerID" INT
);

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

CREATE TABLE "CustomerInfo" (
  "INT" <type>,
  "BOOTLEAN" <type>,
  "VARCHAR" <type>,
  "VARCHAR" <type>,
  "VARCHAR(20-25)" <type>
);

CREATE INDEX "CustomerID" ON  "CustomerInfo" ("INT");

CREATE INDEX "Member" ON  "CustomerInfo" ("BOOTLEAN");

CREATE INDEX "Name" ON  "CustomerInfo" ("VARCHAR");

CREATE INDEX "BillingAddress" ON  "CustomerInfo" ("VARCHAR");

CREATE INDEX "ShippingAddress" ON  "CustomerInfo" ("VARCHAR(20-25)");

CREATE TABLE "Invoice" (
  "InvoiceID " INT,
  "CustomerID" INT,
  "OrderDate" DATE,
  "ShippingAddress" VARCHAR,
  "ShippedDate" DATE,
  "InvoiceItem" INT,
  "Quanity" INT,
  "TotalItems" INT,
  "TotalSale" NUM(14,2),
  CONSTRAINT "FK_Invoice.CustomerID"
    FOREIGN KEY ("CustomerID")
      REFERENCES "CustomerInfo"("INT"),
  CONSTRAINT "FK_Invoice.CustomerID"
    FOREIGN KEY ("CustomerID")
      REFERENCES "Members "("CustomerID")
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

CREATE TABLE "Entity" (
  "InvoiceItem" VARCHAR,
  "NumOfItem(s)" VARCHAR,
  "PricePerItem" NUM(14,2),
  "OnHand" INT,
  "InventoryDate" DATE
);

