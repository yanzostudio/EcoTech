<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <script type="text/javascript">
        // Menampilkan alert ketika halaman dimuat
        window.onload = function() {
            alert("Terjadi kesalahan! Gagal menyimpan data ke database. Harap coba lagi.");
            window.location.href = "resource_usage_form.jsp"; // Redirect ke form jika terjadi error
        }
    </script>
</head>
<body>
    <!-- Tidak perlu konten di dalam body karena alert akan muncul begitu halaman dimuat -->
</body>
</html>
