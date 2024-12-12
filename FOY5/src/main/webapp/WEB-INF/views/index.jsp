<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Öğrenci Listesi</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <h2 class="mt-4">Öğrenci Listesi</h2>
    <a href="showNewStudentForm" class="btn btn-primary mb-2">Yeni Öğrenci Ekle</a>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Ad</th>
                <th>Soyad</th>
                <th>Email</th>
                <th>Yaş</th>
                <th>İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${listStudents}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.firstName}</td>
                    <td>${student.lastName}</td>
                    <td>${student.email}</td>
                    <td>${student.age}</td>
                    <td>
                        <a href="showFormForUpdate/${student.id}" class="btn btn-info btn-sm">Güncelle</a>
                        <a href="deleteStudent/${student.id}" class="btn btn-danger btn-sm" onclick="return confirm('Silmek istediğinize emin misiniz?');">Sil</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
