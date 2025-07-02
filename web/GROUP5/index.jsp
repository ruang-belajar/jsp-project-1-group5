<%-- 
    Document   : index
    Created on : Jun 29, 2025, 3:03:51 PM
    Author     : Asri Nurul Afni H
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Group 5</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    <style>
        body {
        background: #EEAECA;
        background: radial-gradient(circle, rgba(238, 174, 202, 1) 0%, rgba(225, 227, 157, 1) 100%);
        } 
    </style>
</head>
</head>
<body>

    <!-- Judul di luar kotak -->
    <div class="text-center mt-5">
        <h1 class="mb-4">📌 Project Group 5</h1>
    </div>

    <!-- Kotak isi anggota -->
    <div class="mx-auto border border-light rounded p-4 text-center" 
         style="width: 850px;background: #EEAECA;
        background: radial-gradient(circle, rgba(238, 174, 202, 1) 0%, rgba(225, 227, 157, 1) 100%);
        ;">

        <div class="row justify-content-center">
            <!-- Anggota 1 -->
            <div class="col-md-4 mb-4">
                <a href="asri.messageboard.jsp">
                    <img src="image/asri.jpg" alt="Asri" class="rounded-circle mb-2" width="150" height="150">
                    <h5>Asri Nurul Afni Huriah</h5>
                </a>
            </div>

            <!-- Anggota 2 -->
            <div class="col-md-4 mb-4">
                <a href="Rienjalianti.messageboard.jsp">
                    <img src="image/rien.jpg" alt="Rien" class="rounded-circle mb-2" width="150" height="150">
                    <h5>Rien Jalianti</h5>
                </a>
            </div>
        </div>
    </div>
</body>


</html>
