require "js"

document = JS.global[:document]

add_button = document.getElementById("add")
new_todo_input = document.getElementById("new_todo")
todos = document.getElementById("todos")

add_button.addEventListener("click") do
  next if new_todo_input[:value].to_s.empty?

  li = document.createElement("li")
  li[:innerHTML] = new_todo_input[:value]
  delete_button = document.createElement("button")
  delete_button[:class] = "delete-button"
  delete_button[:innerHTML] = "Done"
  delete_button.addEventListener("click") do
    li.remove
  end
  li.appendChild(delete_button)
  todos.appendChild(li)
  new_todo_input[:value] = ""
end
