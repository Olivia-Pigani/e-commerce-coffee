export class Product {

    constructor(
        public sku: String,
        public name: String,
        public description: String,
        public unitPrice: number,
        public imageUrl: String,
        public isActive: boolean,
        public unitsInStock: number,
        public productionDate: Date,
        public updatedDate: Date
    ){}

}
