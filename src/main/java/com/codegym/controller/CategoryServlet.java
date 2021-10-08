package com.codegym.controller;

import com.codegym.model.Category;
import com.codegym.service.category.CategoryService;
import com.codegym.service.category.ICategoryService;
import com.codegym.service.product.IProductService;
import com.codegym.service.product.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryServlet", value = "/categories")
public class CategoryServlet extends HttpServlet {
    private IProductService productService = new ProductService();
    private ICategoryService categoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create": {
                showCategoryCreate(request, response);
                break;
            }
            case "delete": {
                showDeleteForm(request, response);
                break;
            }
            case "edit": {
                showEditCategoryForm(request, response);
                break;
            }
            default: {
                showCategoryList(request, response);
                break;
            }
        }
    }

    private void showEditCategoryForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Category category = categoryService.findById(id);
        request.setAttribute("category", category);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Category oldCategory = categoryService.findById(id);
        RequestDispatcher requestDispatcher;
        if (oldCategory == null) {
            requestDispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            requestDispatcher = request.getRequestDispatcher("/category/delete.jsp");
            request.setAttribute("categories", oldCategory);
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCategoryCreate(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/category/create.jsp");
        List<Category> categories = categoryService.getAll();
        request.setAttribute("categories", categories);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCategoryList(HttpServletRequest request, HttpServletResponse response) {
        List<Category> categories = categoryService.getAll();
        RequestDispatcher dispatcher = request.getRequestDispatcher("/category/list.jsp");
        request.setAttribute("categories", categories);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create": {
                addCategory(request, response);
                break;
            }
            case "delete": {
                deleteCategory(request, response);
                break;
            }
            case "edit": {
                editCategory(request, response);
                break;
            }
        }
    }

    private void editCategory(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Category category = categoryService.findById(id);
        RequestDispatcher dispatcher;
        if (category == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            category.setName(name);
            categoryService.update(id, category);
            request.setAttribute("category", category);
            dispatcher = request.getRequestDispatcher("category/edit.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }


    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        categoryService.delete(id);
        try {
            response.sendRedirect("/categories");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addCategory(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        int id =Integer.parseInt(request.getParameter("id")) ;
        Category category = new Category(id,name);
        boolean isCreated = categoryService.save(category);
        String message = "";
        if (isCreated) {
            message = "Create success";
        } else {
            message = "Create fail";
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/category/create.jsp");
        request.setAttribute("message", message);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}

