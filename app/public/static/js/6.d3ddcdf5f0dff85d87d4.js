webpackJsonp([6],{TyRj:function(t,e){},XJ6p:function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=s("sf/l"),a=s("f+26"),n=s("Au9i"),c={name:"admin-commodity",data:function(){return{list:[]}},created:function(){var t=this;Object(i.a)("菜品管理"),Object(a.a)("get","commodity/list",{},function(e){t.list=e})},methods:{updateItem:function(t){},deleteItem:function(t){var e=this;n.MessageBox.confirm("确定执行此操作?").then(function(s){s&&Object(a.a)("get","commodity/delete",{id:t},function(s){for(var i=0;i<e.list.length;i++)e.list[i].id===t&&e.list.splice(i,1);Object(n.Toast)({message:"删除成功",position:"bottom"})})})}}},o={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"admin-commodity"},[s("ul",t._l(t.list,function(e){return s("li",{staticClass:"flex"},[s("div",{staticClass:"imgbg img-cover",style:{backgroundImage:"url("+e.img+")"}}),t._v(" "),s("div",{staticClass:"content"},[s("div",{staticClass:"flex"},[s("h5",[t._v(t._s(e.name))]),t._v(" "),s("h6",[t._v("￥"+t._s(e.price))])]),t._v(" "),s("div",{staticClass:"describe"},[1===e.type?s("span",[t._v("类型：主食")]):2===e.type?s("span",[t._v("类型：海鲜")]):3===e.type?s("span",[t._v("类型：配菜")]):4===e.type?s("span",[t._v("类型：饮品")]):t._e(),t._v(" "),e.discount?s("span",[t._v("折扣："+t._s(e.discount))]):s("span",[t._v("折扣：无")]),t._v(" "),s("span",[t._v("点赞："+t._s(e.praise))]),t._v(" "),s("span",[t._v("销量："+t._s(e.salesVolume))])]),t._v(" "),s("p",{staticClass:"one-line"},[t._v(t._s(e.desc))]),t._v(" "),s("div",{staticClass:"operate"},[s("router-link",{staticClass:"btn update",attrs:{to:{path:"/admin/update?id="+e.id}}},[t._v("修改")]),t._v(" "),s("button",{staticClass:"btn delete",on:{click:function(s){t.deleteItem(e.id)}}},[t._v("删除")])],1)])])}))])},staticRenderFns:[]};var l=s("VU/8")(c,o,!1,function(t){s("TyRj")},"data-v-db2461e2",null);e.default=l.exports}});