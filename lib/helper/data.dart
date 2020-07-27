import 'package:flutternews/models/CategoryModel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = new List<CategoryModel>();

  //1
  CategoryModel businessCategory = new CategoryModel("Business",
      "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80");
  categories.add(businessCategory);

  //2
  CategoryModel entertainmentCategory = new CategoryModel("Entertainment",
      "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80");
  categories.add(entertainmentCategory);

/*  //3
  CategoryModel generalCategory = new CategoryModel("General", "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60" );
  categories.add(generalCategory);
*/

  //4
  CategoryModel healthCategory = new CategoryModel("Health",
      "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80");
  categories.add(healthCategory);

  //5
  CategoryModel scienceCategory = new CategoryModel("Science",
      "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80");
  categories.add(scienceCategory);

  //6
  CategoryModel sportsCategory = new CategoryModel("Sports",
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80");
  categories.add(sportsCategory);

  //7
  CategoryModel technologyCategory = new CategoryModel("Technology",
      "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80");
  categories.add(technologyCategory);

  return categories;
}
