
class ImageModel{
  String url,title;
  int id;

  ImageModel(this.id,this.title,this.url);

  ImageModel.parseJson(Map<String, dynamic> parseJson){
    id = parseJson['id'];
    title = parseJson['title'];
    url = parseJson['url'];
  }
}