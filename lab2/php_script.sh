#!/bin/bash

cat <<EOF | sudo tee /var/www/html/test_db.php
<?php
\$host = "192.168.50.11";
\$user = "vagrant_test";
\$pass = "Tusur123";
\$db   = "testdb";

\$conn = new mysqli(\$host, \$user, \$pass, \$db);

if (\$conn->connect_error) {
    die("Connection failed: " . \$conn->connect_error);
}
echo "Connected to MySQL successfully!";
?>
EOF

sudo chmod 644 /var/www/html/test_db.php
sudo chown www-data:www-data /var/www/html/test_db.php
