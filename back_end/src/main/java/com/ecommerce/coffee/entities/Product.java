package com.ecommerce.coffee.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.util.Date;

@Entity
//@Data => cause bugs
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String sku; // "stock keeping unit"

    @Column(nullable = false)
    private String name;

    //@Transient
    private String description;

    @Column(name = "unit_price", nullable = false)
    private double unitPrice;

    @Column(name = "image_url")
    private String imageUrl;

    private boolean isActive;

    @Column(name = "units_in_stock", nullable = false)
    private int unitsInStock;

    @Column(name = "production_date")
    @CreationTimestamp
    private Date productionDate;

    @Column(name = "updated_date")
    @UpdateTimestamp
    private Date updatedDate;

    @ManyToOne
    @JoinColumn(name = "categories_id", nullable = false)
    private Category category;









}
