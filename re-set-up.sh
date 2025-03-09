#!/bin/bash
# db_setup.sh - Script to drop, create, and populate the database

echo "Dropping and recreating all tables..."
psql -f "DROPandCREATE_Tables(Draft).sql"

echo "Inserting Comments..."
psql -f "Comments.sql"

echo "Inserting Customer Info..."
psql -f "CustomerInfo.sql"

echo "Inserting Events..."
psql -f "Events.sql"

echo "Inserting Invoice Data and sale_info..."
psql -f "Invoice_Data.sql"

echo "Inserting Members..."
psql -f "Members.sql"

echo "Inserting Resources..."
psql -f "Resources.sql"

echo "Inserting SaleLineItem..."
psql -f "SaleLineItem.sql"

echo "Database setup complete."
