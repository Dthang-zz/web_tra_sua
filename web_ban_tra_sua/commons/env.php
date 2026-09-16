<?php

// Biến môi trường, dùng chung toàn hệ thống
// Khai báo dưới dạng HẰNG SỐ để không phải dùng $GLOBALS

// Tự động xác định đường dẫn gốc từ request để chạy được ở mọi môi trường
// (localhost/XAMPP, preview, ...). Nếu chạy qua CLI thì fallback về localhost.
$scheme = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
$host = $_SERVER['HTTP_HOST'] ?? 'localhost';
$dir = isset($_SERVER['SCRIPT_NAME']) ? str_replace('\\', '/', dirname($_SERVER['SCRIPT_NAME'])) : '/';
// Nếu đang ở khu vực admin thì bỏ hậu tố /admin để lấy đường dẫn gốc client
$dir = preg_replace('#/admin$#', '', $dir);
$dir = rtrim($dir, '/');

// Đường dẫn vào đến phần client
define('BASE_URL', $scheme . '://' . $host . $dir . '/');

// Đường dẫn vào đến phần admin
define('BASE_URL_ADMIN', BASE_URL . 'admin/');


define('DB_HOST', 'localhost');
define('DB_PORT', 3306);
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'webtrasua');  // Tên database

define('PATH_ROOT', __DIR__ . '/../');
