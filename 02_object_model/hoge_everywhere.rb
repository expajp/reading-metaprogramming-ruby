# 次に挙げるクラスのいかなるインスタンスからも、hogeメソッドが呼び出せる
# それらのhogeメソッドは、全て"hoge"という文字列を返す
# - String
# - Integer
# - Numeric
# - Class
# - Hash
# - TrueClass

module HogeCallable
  def hoge
    'hoge'
  end
end

[String, Integer, Numeric, Class, Hash, TrueClass].map { |klass| klass.class_eval{ include HogeCallable } }
