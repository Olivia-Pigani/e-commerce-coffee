package com.ecommerce.coffee.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Entity
@Data
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String sku;

    @Column(nullable = false)
    private String name;

    private String description;

    @Column(name = "unit_price", nullable = false)
    private double unitPrice;

    @Column(name = "image_url")
    private String imageUrl;

    private boolean isActive;

    @Column(name = "units_in_stocks", nullable = false)
    private int unitsInStock;

    @Column(name = "production_date")
    private Date productionDate;

    @Column(name = "updated_date")
    private Date updatedDate;

    @ManyToOne
    private Category category;









}
