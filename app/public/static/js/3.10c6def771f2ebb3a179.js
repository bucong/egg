webpackJsonp([3],{JXTs:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var r=n("mvHQ"),i=n.n(r),s=n("f+26"),a=n("sf/l"),c=n("5CpS"),o=n("Au9i"),u={name:"index",data:function(){return{list:[],IMG:c.a}},created:function(){var t=this;Object(s.a)("get","img/list",{imgType:1},function(e){t.list=e});var e=Object(a.b)("code"),n=Object(a.c)("get","userInfo");e&&!n&&(o.Indicator.open("正在登陆中..."),Object(s.a)("get","user/login",{code:e,loginType:"wx"===Object(a.d)()?"wx":"qq",qqCallback:c.c.qq},function(e){Object(a.c)("set","userInfo",i()(e)),Object(o.Toast)({message:"登录成功",position:"bottom",duration:1e3}),t.$router.push({path:"/order"})})),Object(a.a)("四海味点餐"),Object(a.c)("set","userInfo",i()({id:3,name:"聪哥",figureurl:"http://qzapp.qlogo.cn/qzapp/101479867/2807A306B0445956F956F2E29815E0B9/30"}))}},l={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"index"},[t._m(0),t._v(" "),n("h2",[t._v("四海味点餐")]),t._v(" "),n("ul",t._l(t.list,function(e){return n("li",[n("img",{attrs:{src:t.IMG+e.img,alt:""}})])})),t._v(" "),n("div",{staticClass:"go-order"},[n("router-link",{attrs:{to:"/order"}},[t._v("开始点餐")])],1)])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"banner"},[e("img",{attrs:{src:n("cxzu"),width:"100%",alt:""}})])}]};var d=n("VU/8")(u,l,!1,function(t){n("fsgM")},"data-v-35c58989",null);e.default=d.exports},cxzu:function(t,e,n){t.exports=n.p+"static/img/banner.0393afd.png"},fsgM:function(t,e){}});