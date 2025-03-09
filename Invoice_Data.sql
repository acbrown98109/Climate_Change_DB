-- Invoice 2
INSERT INTO Invoice (InvoiceID, CustomerID, DateOrdered, ShippingAddress, DateShipped)
VALUES (2, 8, '2020-10-02', '161 Brown Street Chicago IL 80092', '2020-10-04');

-- Sale_info for Invoice 2:
-- For SaleLineItemID 2 (Earth Rise Puzzle): quantity 2 at 9.35 each → 18.70 total
INSERT INTO sale_info (InvoiceID, SaleLineItemID, quantity, total_cost_per_items, total_quantity, invoice_total)
VALUES (2, 2, 2, 18.70, 3, 34.20);
-- For SaleLineItemID 1 (Earth Rise T-Shirt): quantity 1 at 15.50 each → 15.50 total
INSERT INTO sale_info (InvoiceID, SaleLineItemID, quantity, total_cost_per_items, total_quantity, invoice_total)
VALUES (2, 1, 1, 15.50, 3, 34.20);

-- Invoice 3
INSERT INTO Invoice (InvoiceID, CustomerID, DateOrdered, ShippingAddress, DateShipped)
VALUES (3, 7, '2020-10-09', '120 Pine Street Seattle WA 98122', '2020-10-12');

-- Sale_info for Invoice 3:
-- For SaleLineItemID 1 (Earth Rise T-Shirt): quantity 3 at 15.50 each → 46.50 total
INSERT INTO sale_info (InvoiceID, SaleLineItemID, quantity, total_cost_per_items, total_quantity, invoice_total)
VALUES (3, 1, 3, 46.50, 3, 46.50);

-- Invoice 7
INSERT INTO Invoice (InvoiceID, CustomerID, DateOrdered, ShippingAddress, DateShipped)
VALUES (7, 9, '2020-10-30', '2020 North Street San Francisco CA 99122', NULL);

-- Sale_info for Invoice 7:
-- For SaleLineItemID 4 (Last Views): quantity 1 at 23.90 → 23.90 total
INSERT INTO sale_info (InvoiceID, SaleLineItemID, quantity, total_cost_per_items, total_quantity, invoice_total)
VALUES (7, 4, 1, 23.90, 1, 23.90);

-- Invoice 1
INSERT INTO Invoice (InvoiceID, CustomerID, DateOrdered, ShippingAddress, DateShipped)
VALUES (1, 10, '2020-08-14', '', '');

-- Sale_info for Invoice 1:
-- For SaleLineItemID 6 (Donation): quantity 1 → 10.00 total
INSERT INTO sale_info (InvoiceID, SaleLineItemID, quantity, total_cost_per_items, total_quantity, invoice_total)
VALUES (1, 6, 1, 10.00, 1, 10.00);

-- Invoice 4
INSERT INTO Invoice (InvoiceID, CustomerID, DateOrdered, ShippingAddress, DateShipped)
VALUES (4, 11, '2020-10-15', '', '');

-- Sale_info for Invoice 4:
-- For SaleLineItemID 6 (Donation): quantity 1 → 200.00 total
INSERT INTO sale_info (InvoiceID, SaleLineItemID, quantity, total_cost_per_items, total_quantity, invoice_total)
VALUES (4, 6, 1, 200.00, 1, 200.00);

-- Invoice 5
INSERT INTO Invoice (InvoiceID, CustomerID, DateOrdered, ShippingAddress, DateShipped)
VALUES (5, 12, '2020-10-15', '', '');

-- Sale_info for Invoice 5:
-- For SaleLineItemID 6 (Donation): quantity 1 → 15.00 total
INSERT INTO sale_info (InvoiceID, SaleLineItemID, quantity, total_cost_per_items, total_quantity, invoice_total)
VALUES (5, 6, 1, 15.00, 1, 15.00);
