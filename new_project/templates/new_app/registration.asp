<!DOCTYPE html>
{% extends "new_app/base.asp" %}

{% block body_block %}

<div class="jumbotron">
    {% if registered %}
        <h1> thank you</h1>
    {% else %}
        <h1> register here</h1>
        <h3>fill out the form</h3>

        <form enctype="multipart/form-data" method="post">
            {% csrf_token %}
            {{ user_form.as_p }}
            {{ profile_form.as_p }}
            <input type="submit" value="register">
        
        
        </form>

    {% endif %}
</div>
{% endblock %}