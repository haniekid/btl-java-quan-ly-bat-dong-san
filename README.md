## Hướng dẫn cài đặt chương trình:

### Yêu cầu:

- Cài đặt Java JDK 17
- SQL Server
- NetBeans IDE 8.2 trở lên

### Các bước cài đặt:

- Clone hoặc tải xuống repo
- Mở và chạy file ?.sql trong thư mục Database (SQL SERVER)
- Mở project bằng NetBeans IDE thêm các thư viện (file JAR) trong thư mục lib vào project
- Mở file src/csdl/CSDL.java: Thay đổi CODE, USERNAME và PASSWORD kết nối với SQL SERVER

### Chạy chương trình:

- Màn hình đăng nhập được hiển thị(chạy file login)
- Đăng nhập với tài khoản mặc định:
  - Tài khoản Admin
    ```bash
      Tài khoản: admin
      Mật khẩu: 123
    ```
  - Tài khoản Employee
    ```bash
      Tài khoản: haniekid
      Mật khẩu: 123
    ```

#### Chức năng trưởng phòng (đăng nhập với admin)

- Đăng nhập/ đăng xuất
- Quản lý nhân viên:
  - Xem
  - Thêm
  - Sửa
  - Xóa
  - Tìm kiếm nhân viên theo tên
  - Nhập/xuất dữ liệu giữa SQL và ACCOUNT.txt
  - Xem chi tiết các giao dịch đã thực hiện bởi 1 nhân viên
- Báo cáo doanh thu
  - Tất cả:
    - Hiển thị tất cả
    - Hiển thị theo năm
    - Hiển thị theo tháng và năm
  - Báo cáo doanh thu giao dịch nhà (chưa code xong)
  - Báo cáo doanh thu giao dịch đất (chưa code xong)

#### Chức năng nhân viên (đăng nhập với user)

- Đăng nhập/ đăng xuất
- Quản lý giao dịch đất:
  - Hiển thị tất cả giao dịch của nhân viên đó
  - Thêm giao dịch mới
  - Sửa giao dịch
  - Xóa giao dịch
  - Tìm kiếm giao dịch theo mã giao dịch
- Quản lý giao dịch nhà:
  - Hiển thị tất cả giao dịch của nhân viên đó
  - Thêm giao dịch mới
  - Sửa giao dịch
  - Xóa giao dịch
  - Tìm kiếm giao dịch theo mã giao dịch
