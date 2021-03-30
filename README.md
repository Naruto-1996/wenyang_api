# 使用grape开发的新版API

## 开发

ruby:  2.6.1
bundler: 2.0.2

## 查看API方式

不使用rake routes命令,而是在线: http://petstore.swagger.io/#/

填入本地的api 地址就可以,例如:

http://localhost:4000/api/v2/swagger_doc

## ping测试接口:

http://localhost:4000/api/v2/ping

## 部署

开发模式和生产模式, 都要使用puma进行部署.

### 开发模式

不需要配置puma.rb，但是要配置好database.yml文件
```
$ bundle exec guard -d
```

### 生产模式:

提前配置好config/puma.rb ( 可以根据 config/puma.rb.example 来复制)

```
$ bundle exec puma start
```

## 开发模式下的代码自动更新

我们使用 `guard` 这个gem来实现:

```
$ bundle exec guard -d
```

## 运行单元测试
```
$ bundle exec rspec --format doc
```
或者
```
$ bundle exec rspec spec
```

