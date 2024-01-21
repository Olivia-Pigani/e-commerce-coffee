/*We only want to have read functions in CRUD for Product and Category
* Id's are exposed for now */

package com.ecommerce.coffee.configs;

import com.ecommerce.coffee.entities.Category;
import com.ecommerce.coffee.entities.Product;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Configuration
public class DataRestConfig implements RepositoryRestConfigurer {

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
        RepositoryRestConfigurer.super.configureRepositoryRestConfiguration(config, cors);
        HttpMethod[] prohibitedActions = {HttpMethod.PUT, HttpMethod.POST, HttpMethod.DELETE};

        config.getExposureConfiguration()
                .forDomainType(Product.class)
                .withItemExposure(((metdata, httpMethods) -> httpMethods.disable(prohibitedActions)))
                .withCollectionExposure(((metdata, httpMethods) -> httpMethods.disable(prohibitedActions)));
        config.exposeIdsFor(Product.class);

        config.getExposureConfiguration()
                .forDomainType(Category.class)
                .withItemExposure(((metdata, httpMethods) -> httpMethods.disable(prohibitedActions)))
                .withCollectionExposure(((metdata, httpMethods) -> httpMethods.disable(prohibitedActions)));
        config.exposeIdsFor(Category.class);

    }



}
