(function(){if(!this.specs){var r={},n={},e=function(i,o){var c,u,l=s(o,i),f=s(l,"./index");if(c=n[l]||n[f])return c.exports;if(!(u=r[l]||r[l=f]))throw"module '"+i+"' not found";c={id:l,exports:{}};try{return n[l]=c,u(c.exports,function(r){return e(r,t(l))},c),c.exports}catch(a){throw delete n[l],a}},s=function(r,n){var e,s,t=[];e=/^\.\.?(\/|$)/.test(n)?[r,n].join("/").split("/"):n.split("/");for(var i=0,o=e.length;o>i;i++)s=e[i],".."==s?t.pop():"."!=s&&""!=s&&t.push(s);return t.join("/")},t=function(r){return r.split("/").slice(0,-1).join("/")};this.specs=function(r){return e(r,"")},this.specs.define=function(n){for(var e in n)r[e]=n[e]},this.specs.modules=r,this.specs.cache=n}return this.specs.define}).call(this)({"controllers/users":function(){(function(){var r;r=window.require,describe("The Users Controller",function(){var n;return n=r("controllers/users"),it("can noop",function(){})})}).call(this)},"controllers/users_main":function(){(function(){var r;r=window.require,describe("The UsersMain Controller",function(){var n;return n=r("controllers/usersmain"),it("can noop",function(){})})}).call(this)},"controllers/users_sidebar":function(){(function(){var r;r=window.require,describe("The UsersSidebar Controller",function(){var n;return n=r("controllers/userssidebar"),it("can noop",function(){})})}).call(this)},"models/user":function(){(function(){var r;r=window.require,describe("The User Model",function(){var n;return n=r("models/user"),it("can noop",function(){})})}).call(this)}}),require("lib/setup");for(var key in specs.modules)specs(key);