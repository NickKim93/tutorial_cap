namespace com.sapui5.tutorial;

using { cuid, managed } from '@sap/cds/common';

type Title : String(100);

type Text : String(1000);


entity Producer {
    key ID          : Integer;
        name        : Title;
        nationality : Composition of Nationality;
}

entity Nationality {
    key ID      : Integer;
        country : String;
}

entity Products {

    key ID       : Integer;
        title    : Title;
        descr    : Text;
        price    : Integer;
        stock    : Integer;
        producer : Composition of Producer;
        contact  : Association to one Contacts;
        rating   : Decimal(2, 1) @assert.range: [
            0.0,
            5,0
        ];
        reviews  : Association to many Reviews on reviews.products = $self;
}

entity Contacts {
    key ID       : Integer;
        name     : String;
        phone    : String;
        locality : String;
        country  : String;
        address  : String;
        imageUrl : String @UI.IsImageURL;

}

entity Reviews {
    key ID : UUID;
    products: Association to Products;
    rating: Integer;
    title: Title;
    text: Text;
}
