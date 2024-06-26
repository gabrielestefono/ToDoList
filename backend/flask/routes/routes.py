from app import app
from flask import Flask, request, jsonify
from controllers import ToDoListController

@app.route('/')
def getAll():
    return ToDoListController.getAll()


@app.route('/', methods=["POST"])
def createOne():
    data = request.get_json()
    nome = data.get('nome')
    return ToDoListController.createOne(nome)