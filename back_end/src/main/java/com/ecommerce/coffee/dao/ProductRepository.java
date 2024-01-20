package com.ecommerce.coffee.dao;

import com.ecommerce.coffee.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

public interface ProductRepository extends JpaRepository<Product,Long> {


}
