### 从有类到无类编程
* 1. 类的真相
* 2. 类如何扩展组合功能
* 3. 无类编程的思想: 如何用原型链进行更底层强大的无类编程

-----

* 2. 类的真相

```js

//  coffee_tr "class B"

var B;

B = (function() {
  function B() {}

  return B;

})();

//  coffee_tr "class B; class A extends B"

var A, B,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

B = (function() {
  function B() {}

  return B;

})();

A = (function(superClass) {
  extend(A, superClass);

  function A() {
    return A.__super__.constructor.apply(this, arguments);
  }

  return A;

})(B);

```
