# Repository

Repository は clean architecture における Intreface Adapter レイヤーの Gateways にあたり、エンティティやユースケースに便利な形式から、永続フレームワークに便利な形式にデータを変換する。
本来、Repository の IF は、Domain レイヤーに定義され、Repository はそれに依存するように実装されるが、ruby には、
言語仕様としての interface は存在しないため、repository の実装と IF は同じファイルに書く。以下のように、継承や include を利用することで、ruby でも
interface を限定することは可能だが、結局実行されるまで、raise されることはない。ruby でサポートされない interface の利用にこだわるのも微妙な選択だと思う。
重要なのは、repository の IF は domain レイヤーで定義されるメンタルを持って実装することだと考える。


```ruby
class IUserRepository
  def find_by_user_name(user_name:)
    raise "NotImplementedError"
  end
end

class UserRepository
  include IUserRepository

  def find_by_user_name(user_name:)
    # 省略
  end
end
```
