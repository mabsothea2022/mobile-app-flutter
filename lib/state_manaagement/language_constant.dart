// Craete base class
class Language {
  get appName => "Khmer Movie";
  get detailPage => "Movie Detail";
  get home => "Home";
  get contact => "Contact";
  get language => "Language";
}

// Class khmer extend from Language class, follow concept oop
class Khmer implements Language {
  get appName => "អេបមើលកុន";
  get detailPage => "លម្អិតរឿង";
  get home => "ទំព័រដើម";
  get contact => "ទំនាក់ទំនង";
  get language => "ភាសា";
}

// Class Chine extend from Language class, follow concept oop
class Chine implements Language {
  get appName => "高棉电影";
  get detailPage => "电影详情";
  get home => "家";
  get contact => "接触";
  get language => "语言";
}
