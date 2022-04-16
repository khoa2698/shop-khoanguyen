
(1) install Laragon: https://laragon.org/download/
(2) git clone https://github.com/khoa2698/shop-fashion.git
(3) copy thư mục vừa clone về vào folder www của Laragon
(4) composer install
(5) npm install
(6) Bật Laragon, truy cập http://localhost/phpmyadmin/ 
Đăng nhập vào tài khoản mysql của bạn
type: create database shop_khoanguyen ;
(7) cp .env.example .env ( copy file env )
(8) chỉnh sửa file .env để kết nối db
    DB_CONNECTION=mysql          
	DB_HOST=127.0.0.1            
	DB_PORT=3306                 
	DB_DATABASE=shop_khoanguyen     
	DB_USERNAME=root             
	DB_PASSWORD=<pass tài khoản root của mysql>
	QUEUE_CONNECTION=database
	MAIL_HOST=smtp.gmail.com
        MAIL_PORT=587
	MAIL_USERNAME=<Email của bạn>
	MAIL_PASSWORD=<mật khẩu cấp 2 email của bạn>
	MAIL_ENCRYPTION=tls
	MAIL_FROM_ADDRESS=<Email của bạn>
(9) php artisan key:generate
(10) php artisan migrate:refresh --seed
(11) php artisan storage:link
(12) truy cập đường dẫn http://<yoursite>.test

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
