using {com.sapui5.tutorial as cap} from '../db/schema';

service AdminService {
    entity Products as projection on cap.Products actions {
    action addReview(rating : Integer, title : String, text : String);
    };

    entity Producer    as projection on cap.Producer;
    entity Nationality as projection on cap.Nationality;
    entity Contacts    as projection on cap.Contacts;
    entity Reviews     as projection on cap.Reviews;
}
