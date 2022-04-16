<h1>Hướng dẫn cài đặt</h1>  <h3>Liên hệ: <a href="https://www.facebook.com/khoa.nguyenvan.99"><em>Khoa Nguyễn</em></a></h3>
(1) install Laragon: https://laragon.org/download/ <br>
(2) git clone https://github.com/khoa2698/shop-fashion.git <br>
(3) copy thư mục vừa clone về vào folder www của Laragon <br>
(4) composer install <br>
(5) npm install <br>
(6) Bật Laragon, truy cập http://localhost/phpmyadmin/ <br>
Đăng nhập vào tài khoản mysql của bạn
type: create database shop_khoanguyen <br>
(7) cp .env.example .env ( copy file env ) <br>
(8) chỉnh sửa file .env để kết nối db <br>
    DB_CONNECTION=mysql          
	DB_HOST=127.0.0.1            
	DB_PORT=3306                 
	DB_DATABASE=shop_khoanguyen     
	DB_USERNAME=root             
	DB_PASSWORD=<pass tài khoản root của mysql> <br>
	QUEUE_CONNECTION=database <br>
	MAIL_HOST=smtp.gmail.com <br>
    MAIL_PORT=587 <br>
	MAIL_USERNAME=<Email của bạn> <br>
	MAIL_PASSWORD=<mật khẩu cấp 2 email của bạn> <br>
	MAIL_ENCRYPTION=tls <br>
	MAIL_FROM_ADDRESS=<Email của bạn> <br>
(9) php artisan key:generate <br>
(10) php artisan migrate:refresh --seed <br>
(11) php artisan storage:link <br>
(12) truy cập đường dẫn http://\<yourSite>.test <br>

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
