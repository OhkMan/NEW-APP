#!/bin/bash

# Initialize the database with sample products
python - << EOF
from app import create_app
from utils.cosmos_db import create_item, query_items
import os

app = create_app()
with app.app_context():
    # Initialize sample products if needed
    products = query_items('products', "SELECT * FROM c")
    if not products:
        sample_products = [
            {
                'id': 'laptop',
                'name': 'Laptop',
                'description': 'High-performance laptop',
                'price': 999.99,
                'category': 'Electronics'
            },
            {
                'id': 'smartphone',
                'name': 'Smartphone',
                'description': 'Latest smartphone',
                'price': 699.99,
                'category': 'Electronics'
            },
            {
                'id': 'headphones',
                'name': 'Headphones',
                'description': 'Wireless headphones',
                'price': 199.99,
                'category': 'Accessories'
            },
            {
                'id': 'smartwatch',
                'name': 'Smartwatch',
                'description': 'Fitness smartwatch',
                'price': 299.99,
                'category': 'Accessories'
            }
        ]
        for product in sample_products:
            create_item('products', product)
EOF

# Start the application with gunicorn
gunicorn --bind=0.0.0.0 --timeout 600 app:app 