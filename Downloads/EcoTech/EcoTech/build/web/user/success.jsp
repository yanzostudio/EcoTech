<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <script type="text/javascript">
        // Menampilkan alert ketika halaman dimuat
        window.onload = function() {
            alert("Data berhasil ditambahkan! Penggunaan sumber daya telah berhasil disimpan ke database.");
            window.location.href = "index.jsp"; // Redirect ke halaman utama setelah alert
        }
    </script>
</head>
<body>
    <!-- Tidak perlu konten di dalam body karena alert akan muncul begitu halaman dimuat -->
</body>
</html>
