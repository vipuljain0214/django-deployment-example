<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <ul class="nav navbar-nav">
                    <li><a class="navbar-brand" href="{% url 'index' %}">django</a></li>
                    <li><a class="navbar-link" href="{% url 'new_app:register' %}">Register</a></li>
                    <li><a class="navbar-link" href="{% url 'admin:index' %}">Admin</a></li>

                    {% if user.is_authenticated %}
                    <li><a class="navbar-link" href="{% url 'logout' %}">Logout</a></li>
                    {% else %}
                    <li><a class="navbar-link" href="{% url 'new_app:user_login' %}">Login</a></li>
                    {% endif %}
                    
                </ul>
            </div>
        </nav>
        <div class="container">
            {% block body_block %}
            {% endblock %}
        </div>
    </body>
</html>

