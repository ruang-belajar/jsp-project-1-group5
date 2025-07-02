<%-- 
    Document   : asri.messageboard.view
    Created on : Jul 1, 2025, 2:49:46?PM
    Author     : Asri Nurul Afni H
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Board - Asri</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    <style>
        body {
        background: #EEAECA;
        background: radial-gradient(circle, rgba(238, 174, 202, 1) 0%, rgba(225, 227, 157, 1) 100%);
        }  
    </style>  
</head>
<body class="p-5">
    <div class="container">
        <h1 class="text-center mb-4">Message Board - Asri</h1>
        <div class="text-center">
            <img src="image\asri.jpg" alt="Asri" class="rounded-circle mb-2" width="150" height="150">
        </div>

        <div class="row mt-4">
            <!-- Kolom Kiri - Form Kirim Pesan -->
            <div class="col-md-6">
                <div class="container-box">
                    <h4>Kirim Pesan ke Asri</h4>
                    <form method="post" action="asri.messageboard.jsp">
                        <div class="form-group">
                            <input type="text" name="pengirim" placeholder="Nama Pengirim" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <textarea name="pesan" placeholder="Tulis pesan..." class="form-control" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Kirim Pesan</button>
                    </form>
                </div>
            </div>

            <!-- Kolom Kanan - Riwayat Pesan -->
            <div class="col-md-6">
                <div class="container-box">
                    <h4>Riwayat Pesan yang Masuk</h4>
                    <ul class="list-group">
                        <c:forEach items="${list}" var="row">
                            <li class="list-group-item">
                                <strong>${row.pengirim}</strong>: ${row.pesan}
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>

        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-secondary">Kembali ke Halaman Depan</a>
        </div>
    </div>
</body>
</html>

