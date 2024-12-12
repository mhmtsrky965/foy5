<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Öğrenci Güncelle</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <h2 class="mt-4">Öğrenci Güncelle</h2>
    <form:form action="saveStudent" modelAttribute="student" method="post">
        <form:hidden path="id" />
        <div class="form-group">
            <label for="firstName">Ad:</label>
            <form:input path="firstName" cssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="lastName">Soyad:</label>
            <form:input path="lastName" cssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" cssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="age">Yaş:</label>
            <form:input path="age" cssClass="form-control" />
        </div>
        <button type="submit" class="btn btn-primary">Güncelle</button>
        <a href="/" class="btn btn-secondary">İptal</a>
    </form:form>
</div>
</body>
</html>
