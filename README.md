# FactoryList
工厂构建UITableView/UICollectionView

1、继承BaseViewModel、BaseCell、BaseHeader。
2、根据dequeueReusableCellWithReuseIdentifier方法生成具体子类。
3、统一cell和header点击事件，参数以字典方式传值，方便管理。
