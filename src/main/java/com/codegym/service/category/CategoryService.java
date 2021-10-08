package com.codegym.service.category;

import com.codegym.dao.category.CategoryDao;
import com.codegym.dao.category.ICategoryDao;
import com.codegym.model.Category;

import java.util.List;

public class CategoryService implements ICategoryService{
   private ICategoryDao categoryDao = new CategoryDao();


    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public boolean save(Category category) {
        return categoryDao.save(category);
    }

    @Override
    public boolean update(int id, Category category) {
        return categoryDao.update(id, category);
    }

    @Override
    public boolean delete(int id) {
        return categoryDao.delete(id);
    }

    @Override
    public Category findById(int id) {
        return categoryDao.findById(id);
    }
}
