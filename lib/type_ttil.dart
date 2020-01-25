///
/// 获取泛型类型工具类
/// 在发flutter web 发布版本中，对象类型会混淆，
/// 通过这种工具类方法可以获取混淆后的类型，以及比较泛型类型是否一致
///
/// @author David
/// @date 2019-12-26
///
class TypeUtil {

  /// 返回泛型的类型
  static Type typeOf<T>() => T;

  /// 返回泛型的String字符
  /// flutter web中有个bug，引用同一个类，但是一个是相对路径，一个是绝对路径，泛型比较结果是不一致的
  static String typeToStr<T>() => '$T';

  /// 泛型T、B 比较，是否是统一类型
  static bool equal<T, B>() => typeToStr<T>() == typeToStr<B>();

  /// 泛型T 是否是 Map<String, String>
  static bool equalMapString<T>() => equal<T, Map<String, String>>();
}
