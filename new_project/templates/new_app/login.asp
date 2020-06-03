<!DOCTYPE html>
{% extends 'new_app/base.asp' %}

{% block body_block %}
<div class="jumbotron">
    <h1>Login here</h1>
    <form action="{% url 'new_app:user_login' %}" method="POST">
        {% csrf_token %}
        <label for="username">Username:</label>
        <input type="text" name="usrname" placeholder="enter username">

        <label for="password">Password:</label>
        <input type="password" name="password">

        <input type="submit" name="" value="Login">
    </form>
</div>

{% endblock %}