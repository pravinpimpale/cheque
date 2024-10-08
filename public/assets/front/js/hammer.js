!(function (t, e, n, i) {
  'use strict';
  function r(t, e, n) {
    return setTimeout(h(t, n), e);
  }
  function s(t, e, n) {
    return Array.isArray(t) ? (o(t, n[e], n), !0) : !1;
  }
  function o(t, e, n) {
    var r;
    if (t)
      if (t.forEach) t.forEach(e, n);
      else if (t.length !== i) for (r = 0; r < t.length; ) e.call(n, t[r], r, t), r++;
      else for (r in t) t.hasOwnProperty(r) && e.call(n, t[r], r, t);
  }
  function a(e, n, i) {
    var r = 'DEPRECATED METHOD: ' + n + '\n' + i + ' AT \n';
    return function () {
      var n = new Error('get-stack-trace'),
        i =
          n && n.stack
            ? n.stack
                .replace(/^[^\(]+?[\n$]/gm, '')
                .replace(/^\s+at\s+/gm, '')
                .replace(/^Object.<anonymous>\s*\(/gm, '{anonymous}()@')
            : 'Unknown Stack Trace',
        s = t.console && (t.console.warn || t.console.log);
      return s && s.call(t.console, r, i), e.apply(this, arguments);
    };
  }
  function u(t, e, n) {
    var i,
      r = e.prototype;
    (i = t.prototype = Object.create(r)), (i.constructor = t), (i._super = r), n && lt(i, n);
  }
  function h(t, e) {
    return function () {
      return t.apply(e, arguments);
    };
  }
  function c(t, e) {
    return typeof t == dt ? t.apply(e ? e[0] || i : i, e) : t;
  }
  function l(t, e) {
    return t === i ? e : t;
  }
  function p(t, e, n) {
    o(m(e), function (e) {
      t.addEventListener(e, n, !1);
    });
  }
  function f(t, e, n) {
    o(m(e), function (e) {
      t.removeEventListener(e, n, !1);
    });
  }
  function d(t, e) {
    for (; t; ) {
      if (t == e) return !0;
      t = t.parentNode;
    }
    return !1;
  }
  function v(t, e) {
    return t.indexOf(e) > -1;
  }
  function m(t) {
    return t.trim().split(/\s+/g);
  }
  function g(t, e, n) {
    if (t.indexOf && !n) return t.indexOf(e);
    for (var i = 0; i < t.length; ) {
      if ((n && t[i][n] == e) || (!n && t[i] === e)) return i;
      i++;
    }
    return -1;
  }
  function T(t) {
    return Array.prototype.slice.call(t, 0);
  }
  function y(t, e, n) {
    for (var i = [], r = [], s = 0; s < t.length; ) {
      var o = e ? t[s][e] : t[s];
      g(r, o) < 0 && i.push(t[s]), (r[s] = o), s++;
    }
    return (
      n &&
        (i = e
          ? i.sort(function (t, n) {
              return t[e] > n[e];
            })
          : i.sort()),
      i
    );
  }
  function E(t, e) {
    for (var n, r, s = e[0].toUpperCase() + e.slice(1), o = 0; o < pt.length; ) {
      if (((n = pt[o]), (r = n ? n + s : e), r in t)) return r;
      o++;
    }
    return i;
  }
  function I() {
    return Et++;
  }
  function A(e) {
    var n = e.ownerDocument || e;
    return n.defaultView || n.parentWindow || t;
  }
  function _(t, e) {
    var n = this;
    (this.manager = t),
      (this.callback = e),
      (this.element = t.element),
      (this.target = t.options.inputTarget),
      (this.domHandler = function (e) {
        c(t.options.enable, [t]) && n.handler(e);
      }),
      this.init();
  }
  function C(t) {
    var e,
      n = t.options.inputClass;
    return new (e = n ? n : _t ? F : Ct ? k : At ? L : Y)(t, b);
  }
  function b(t, e, n) {
    var i = n.pointers.length,
      r = n.changedPointers.length,
      s = e & wt && i - r === 0,
      o = e & (Rt | Mt) && i - r === 0;
    (n.isFirst = !!s),
      (n.isFinal = !!o),
      s && (t.session = {}),
      (n.eventType = e),
      P(t, n),
      t.emit('hammer.input', n),
      t.recognize(n),
      (t.session.prevInput = n);
  }
  function P(t, e) {
    var n = t.session,
      i = e.pointers,
      r = i.length;
    n.firstInput || (n.firstInput = x(e)),
      r > 1 && !n.firstMultiple ? (n.firstMultiple = x(e)) : 1 === r && (n.firstMultiple = !1);
    var s = n.firstInput,
      o = n.firstMultiple,
      a = o ? o.center : s.center,
      u = (e.center = w(i));
    (e.timeStamp = gt()),
      (e.deltaTime = e.timeStamp - s.timeStamp),
      (e.angle = z(a, u)),
      (e.distance = M(a, u)),
      S(n, e),
      (e.offsetDirection = R(e.deltaX, e.deltaY));
    var h = O(e.deltaTime, e.deltaX, e.deltaY);
    (e.overallVelocityX = h.x),
      (e.overallVelocityY = h.y),
      (e.overallVelocity = mt(h.x) > mt(h.y) ? h.x : h.y),
      (e.scale = o ? X(o.pointers, i) : 1),
      (e.rotation = o ? N(o.pointers, i) : 0),
      (e.maxPointers = n.prevInput
        ? e.pointers.length > n.prevInput.maxPointers
          ? e.pointers.length
          : n.prevInput.maxPointers
        : e.pointers.length),
      D(n, e);
    var c = t.element;
    d(e.srcEvent.target, c) && (c = e.srcEvent.target), (e.target = c);
  }
  function S(t, e) {
    var n = e.center,
      i = t.offsetDelta || {},
      r = t.prevDelta || {},
      s = t.prevInput || {};
    (e.eventType === wt || s.eventType === Rt) &&
      ((r = t.prevDelta = { x: s.deltaX || 0, y: s.deltaY || 0 }), (i = t.offsetDelta = { x: n.x, y: n.y })),
      (e.deltaX = r.x + (n.x - i.x)),
      (e.deltaY = r.y + (n.y - i.y));
  }
  function D(t, e) {
    var n,
      r,
      s,
      o,
      a = t.lastInterval || e,
      u = e.timeStamp - a.timeStamp;
    if (e.eventType != Mt && (u > xt || a.velocity === i)) {
      var h = e.deltaX - a.deltaX,
        c = e.deltaY - a.deltaY,
        l = O(u, h, c);
      (r = l.x), (s = l.y), (n = mt(l.x) > mt(l.y) ? l.x : l.y), (o = R(h, c)), (t.lastInterval = e);
    } else (n = a.velocity), (r = a.velocityX), (s = a.velocityY), (o = a.direction);
    (e.velocity = n), (e.velocityX = r), (e.velocityY = s), (e.direction = o);
  }
  function x(t) {
    for (var e = [], n = 0; n < t.pointers.length; )
      (e[n] = { clientX: vt(t.pointers[n].clientX), clientY: vt(t.pointers[n].clientY) }), n++;
    return { timeStamp: gt(), pointers: e, center: w(e), deltaX: t.deltaX, deltaY: t.deltaY };
  }
  function w(t) {
    var e = t.length;
    if (1 === e) return { x: vt(t[0].clientX), y: vt(t[0].clientY) };
    for (var n = 0, i = 0, r = 0; e > r; ) (n += t[r].clientX), (i += t[r].clientY), r++;
    return { x: vt(n / e), y: vt(i / e) };
  }
  function O(t, e, n) {
    return { x: e / t || 0, y: n / t || 0 };
  }
  function R(t, e) {
    return t === e ? zt : mt(t) >= mt(e) ? (0 > t ? Nt : Xt) : 0 > e ? Yt : Ft;
  }
  function M(t, e, n) {
    n || (n = Ht);
    var i = e[n[0]] - t[n[0]],
      r = e[n[1]] - t[n[1]];
    return Math.sqrt(i * i + r * r);
  }
  function z(t, e, n) {
    n || (n = Ht);
    var i = e[n[0]] - t[n[0]],
      r = e[n[1]] - t[n[1]];
    return (180 * Math.atan2(r, i)) / Math.PI;
  }
  function N(t, e) {
    return z(e[1], e[0], Lt) + z(t[1], t[0], Lt);
  }
  function X(t, e) {
    return M(e[0], e[1], Lt) / M(t[0], t[1], Lt);
  }
  function Y() {
    (this.evEl = Vt), (this.evWin = jt), (this.pressed = !1), _.apply(this, arguments);
  }
  function F() {
    (this.evEl = Bt),
      (this.evWin = $t),
      _.apply(this, arguments),
      (this.store = this.manager.session.pointerEvents = []);
  }
  function W() {
    (this.evTarget = Kt), (this.evWin = Qt), (this.started = !1), _.apply(this, arguments);
  }
  function q(t, e) {
    var n = T(t.touches),
      i = T(t.changedTouches);
    return e & (Rt | Mt) && (n = y(n.concat(i), 'identifier', !0)), [n, i];
  }
  function k() {
    (this.evTarget = ee), (this.targetIds = {}), _.apply(this, arguments);
  }
  function H(t, e) {
    var n = T(t.touches),
      i = this.targetIds;
    if (e & (wt | Ot) && 1 === n.length) return (i[n[0].identifier] = !0), [n, n];
    var r,
      s,
      o = T(t.changedTouches),
      a = [],
      u = this.target;
    if (
      ((s = n.filter(function (t) {
        return d(t.target, u);
      })),
      e === wt)
    )
      for (r = 0; r < s.length; ) (i[s[r].identifier] = !0), r++;
    for (r = 0; r < o.length; ) i[o[r].identifier] && a.push(o[r]), e & (Rt | Mt) && delete i[o[r].identifier], r++;
    return a.length ? [y(s.concat(a), 'identifier', !0), a] : void 0;
  }
  function L() {
    _.apply(this, arguments);
    var t = h(this.handler, this);
    (this.touch = new k(this.manager, t)),
      (this.mouse = new Y(this.manager, t)),
      (this.primaryTouch = null),
      (this.lastTouches = []);
  }
  function U(t, e) {
    t & wt
      ? ((this.primaryTouch = e.changedPointers[0].identifier), V.call(this, e))
      : t & (Rt | Mt) && V.call(this, e);
  }
  function V(t) {
    var e = t.changedPointers[0];
    if (e.identifier === this.primaryTouch) {
      var n = { x: e.clientX, y: e.clientY };
      this.lastTouches.push(n);
      var i = this.lastTouches,
        r = function () {
          var t = i.indexOf(n);
          t > -1 && i.splice(t, 1);
        };
      setTimeout(r, ne);
    }
  }
  function j(t) {
    for (var e = t.srcEvent.clientX, n = t.srcEvent.clientY, i = 0; i < this.lastTouches.length; i++) {
      var r = this.lastTouches[i],
        s = Math.abs(e - r.x),
        o = Math.abs(n - r.y);
      if (ie >= s && ie >= o) return !0;
    }
    return !1;
  }
  function G(t, e) {
    (this.manager = t), this.set(e);
  }
  function Z(t) {
    if (v(t, he)) return he;
    var e = v(t, ce),
      n = v(t, le);
    return e && n ? he : e || n ? (e ? ce : le) : v(t, ue) ? ue : ae;
  }
  function B() {
    if (!se) return !1;
    var e = {},
      n = t.CSS && t.CSS.supports;
    return (
      ['auto', 'manipulation', 'pan-y', 'pan-x', 'pan-x pan-y', 'none'].forEach(function (i) {
        e[i] = n ? t.CSS.supports('touch-action', i) : !0;
      }),
      e
    );
  }
  function $(t) {
    (this.options = lt({}, this.defaults, t || {})),
      (this.id = I()),
      (this.manager = null),
      (this.options.enable = l(this.options.enable, !0)),
      (this.state = fe),
      (this.simultaneous = {}),
      (this.requireFail = []);
  }
  function J(t) {
    return t & Te ? 'cancel' : t & me ? 'end' : t & ve ? 'move' : t & de ? 'start' : '';
  }
  function K(t) {
    return t == Ft ? 'down' : t == Yt ? 'up' : t == Nt ? 'left' : t == Xt ? 'right' : '';
  }
  function Q(t, e) {
    var n = e.manager;
    return n ? n.get(t) : t;
  }
  function tt() {
    $.apply(this, arguments);
  }
  function et() {
    tt.apply(this, arguments), (this.pX = null), (this.pY = null);
  }
  function nt() {
    tt.apply(this, arguments);
  }
  function it() {
    $.apply(this, arguments), (this._timer = null), (this._input = null);
  }
  function rt() {
    tt.apply(this, arguments);
  }
  function st() {
    tt.apply(this, arguments);
  }
  function ot() {
    $.apply(this, arguments),
      (this.pTime = !1),
      (this.pCenter = !1),
      (this._timer = null),
      (this._input = null),
      (this.count = 0);
  }
  function at(t, e) {
    return (e = e || {}), (e.recognizers = l(e.recognizers, at.defaults.preset)), new ut(t, e);
  }
  function ut(t, e) {
    (this.options = lt({}, at.defaults, e || {})),
      (this.options.inputTarget = this.options.inputTarget || t),
      (this.handlers = {}),
      (this.session = {}),
      (this.recognizers = []),
      (this.oldCssProps = {}),
      (this.element = t),
      (this.input = C(this)),
      (this.touchAction = new G(this, this.options.touchAction)),
      ht(this, !0),
      o(
        this.options.recognizers,
        function (t) {
          var e = this.add(new t[0](t[1]));
          t[2] && e.recognizeWith(t[2]), t[3] && e.requireFailure(t[3]);
        },
        this
      );
  }
  function ht(t, e) {
    var n = t.element;
    if (n.style) {
      var i;
      o(t.options.cssProps, function (r, s) {
        (i = E(n.style, s)),
          e ? ((t.oldCssProps[i] = n.style[i]), (n.style[i] = r)) : (n.style[i] = t.oldCssProps[i] || '');
      }),
        e || (t.oldCssProps = {});
    }
  }
  function ct(t, n) {
    var i = e.createEvent('Event');
    i.initEvent(t, !0, !0), (i.gesture = n), n.target.dispatchEvent(i);
  }
  var lt,
    pt = ['', 'webkit', 'Moz', 'MS', 'ms', 'o'],
    ft = e.createElement('div'),
    dt = 'function',
    vt = Math.round,
    mt = Math.abs,
    gt = Date.now;
  lt =
    'function' != typeof Object.assign
      ? function (t) {
          if (t === i || null === t) throw new TypeError('Cannot convert undefined or null to object');
          for (var e = Object(t), n = 1; n < arguments.length; n++) {
            var r = arguments[n];
            if (r !== i && null !== r) for (var s in r) r.hasOwnProperty(s) && (e[s] = r[s]);
          }
          return e;
        }
      : Object.assign;
  var Tt = a(
      function (t, e, n) {
        for (var r = Object.keys(e), s = 0; s < r.length; ) (!n || (n && t[r[s]] === i)) && (t[r[s]] = e[r[s]]), s++;
        return t;
      },
      'extend',
      'Use `assign`.'
    ),
    yt = a(
      function (t, e) {
        return Tt(t, e, !0);
      },
      'merge',
      'Use `assign`.'
    ),
    Et = 1,
    It = /mobile|tablet|ip(ad|hone|od)|android/i,
    At = 'ontouchstart' in t,
    _t = E(t, 'PointerEvent') !== i,
    Ct = At && It.test(navigator.userAgent),
    bt = 'touch',
    Pt = 'pen',
    St = 'mouse',
    Dt = 'kinect',
    xt = 25,
    wt = 1,
    Ot = 2,
    Rt = 4,
    Mt = 8,
    zt = 1,
    Nt = 2,
    Xt = 4,
    Yt = 8,
    Ft = 16,
    Wt = Nt | Xt,
    qt = Yt | Ft,
    kt = Wt | qt,
    Ht = ['x', 'y'],
    Lt = ['clientX', 'clientY'];
  _.prototype = {
    handler: function () {},
    init: function () {
      this.evEl && p(this.element, this.evEl, this.domHandler),
        this.evTarget && p(this.target, this.evTarget, this.domHandler),
        this.evWin && p(A(this.element), this.evWin, this.domHandler);
    },
    destroy: function () {
      this.evEl && f(this.element, this.evEl, this.domHandler),
        this.evTarget && f(this.target, this.evTarget, this.domHandler),
        this.evWin && f(A(this.element), this.evWin, this.domHandler);
    }
  };
  var Ut = { mousedown: wt, mousemove: Ot, mouseup: Rt },
    Vt = 'mousedown',
    jt = 'mousemove mouseup';
  u(Y, _, {
    handler: function (t) {
      var e = Ut[t.type];
      e & wt && 0 === t.button && (this.pressed = !0),
        e & Ot && 1 !== t.which && (e = Rt),
        this.pressed &&
          (e & Rt && (this.pressed = !1),
          this.callback(this.manager, e, { pointers: [t], changedPointers: [t], pointerType: St, srcEvent: t }));
    }
  });
  var Gt = { pointerdown: wt, pointermove: Ot, pointerup: Rt, pointercancel: Mt, pointerout: Mt },
    Zt = { 2: bt, 3: Pt, 4: St, 5: Dt },
    Bt = 'pointerdown',
    $t = 'pointermove pointerup pointercancel';
  t.MSPointerEvent && !t.PointerEvent && ((Bt = 'MSPointerDown'), ($t = 'MSPointerMove MSPointerUp MSPointerCancel')),
    u(F, _, {
      handler: function (t) {
        var e = this.store,
          n = !1,
          i = t.type.toLowerCase().replace('ms', ''),
          r = Gt[i],
          s = Zt[t.pointerType] || t.pointerType,
          o = s == bt,
          a = g(e, t.pointerId, 'pointerId');
        r & wt && (0 === t.button || o) ? 0 > a && (e.push(t), (a = e.length - 1)) : r & (Rt | Mt) && (n = !0),
          0 > a ||
            ((e[a] = t),
            this.callback(this.manager, r, { pointers: e, changedPointers: [t], pointerType: s, srcEvent: t }),
            n && e.splice(a, 1));
      }
    });
  var Jt = { touchstart: wt, touchmove: Ot, touchend: Rt, touchcancel: Mt },
    Kt = 'touchstart',
    Qt = 'touchstart touchmove touchend touchcancel';
  u(W, _, {
    handler: function (t) {
      var e = Jt[t.type];
      if ((e === wt && (this.started = !0), this.started)) {
        var n = q.call(this, t, e);
        e & (Rt | Mt) && n[0].length - n[1].length === 0 && (this.started = !1),
          this.callback(this.manager, e, { pointers: n[0], changedPointers: n[1], pointerType: bt, srcEvent: t });
      }
    }
  });
  var te = { touchstart: wt, touchmove: Ot, touchend: Rt, touchcancel: Mt },
    ee = 'touchstart touchmove touchend touchcancel';
  u(k, _, {
    handler: function (t) {
      var e = te[t.type],
        n = H.call(this, t, e);
      n && this.callback(this.manager, e, { pointers: n[0], changedPointers: n[1], pointerType: bt, srcEvent: t });
    }
  });
  var ne = 2500,
    ie = 25;
  u(L, _, {
    handler: function (t, e, n) {
      var i = n.pointerType == bt,
        r = n.pointerType == St;
      if (!(r && n.sourceCapabilities && n.sourceCapabilities.firesTouchEvents)) {
        if (i) U.call(this, e, n);
        else if (r && j.call(this, n)) return;
        this.callback(t, e, n);
      }
    },
    destroy: function () {
      this.touch.destroy(), this.mouse.destroy();
    }
  });
  var re = E(ft.style, 'touchAction'),
    se = re !== i,
    oe = 'compute',
    ae = 'auto',
    ue = 'manipulation',
    he = 'none',
    ce = 'pan-x',
    le = 'pan-y',
    pe = B();
  G.prototype = {
    set: function (t) {
      t == oe && (t = this.compute()),
        se && this.manager.element.style && pe[t] && (this.manager.element.style[re] = t),
        (this.actions = t.toLowerCase().trim());
    },
    update: function () {
      this.set(this.manager.options.touchAction);
    },
    compute: function () {
      var t = [];
      return (
        o(this.manager.recognizers, function (e) {
          c(e.options.enable, [e]) && (t = t.concat(e.getTouchAction()));
        }),
        Z(t.join(' '))
      );
    },
    preventDefaults: function (t) {
      var e = t.srcEvent,
        n = t.offsetDirection;
      if (this.manager.session.prevented) return void e.preventDefault();
      var i = this.actions,
        r = v(i, he) && !pe[he],
        s = v(i, le) && !pe[le],
        o = v(i, ce) && !pe[ce];
      if (r) {
        var a = 1 === t.pointers.length,
          u = t.distance < 2,
          h = t.deltaTime < 250;
        if (a && u && h) return;
      }
      return o && s ? void 0 : r || (s && n & Wt) || (o && n & qt) ? this.preventSrc(e) : void 0;
    },
    preventSrc: function (t) {
      (this.manager.session.prevented = !0), t.preventDefault();
    }
  };
  var fe = 1,
    de = 2,
    ve = 4,
    me = 8,
    ge = me,
    Te = 16,
    ye = 32;
  ($.prototype = {
    defaults: {},
    set: function (t) {
      return lt(this.options, t), this.manager && this.manager.touchAction.update(), this;
    },
    recognizeWith: function (t) {
      if (s(t, 'recognizeWith', this)) return this;
      var e = this.simultaneous;
      return (t = Q(t, this)), e[t.id] || ((e[t.id] = t), t.recognizeWith(this)), this;
    },
    dropRecognizeWith: function (t) {
      return s(t, 'dropRecognizeWith', this) ? this : ((t = Q(t, this)), delete this.simultaneous[t.id], this);
    },
    requireFailure: function (t) {
      if (s(t, 'requireFailure', this)) return this;
      var e = this.requireFail;
      return (t = Q(t, this)), -1 === g(e, t) && (e.push(t), t.requireFailure(this)), this;
    },
    dropRequireFailure: function (t) {
      if (s(t, 'dropRequireFailure', this)) return this;
      t = Q(t, this);
      var e = g(this.requireFail, t);
      return e > -1 && this.requireFail.splice(e, 1), this;
    },
    hasRequireFailures: function () {
      return this.requireFail.length > 0;
    },
    canRecognizeWith: function (t) {
      return !!this.simultaneous[t.id];
    },
    emit: function (t) {
      function e(e) {
        n.manager.emit(e, t);
      }
      var n = this,
        i = this.state;
      me > i && e(n.options.event + J(i)),
        e(n.options.event),
        t.additionalEvent && e(t.additionalEvent),
        i >= me && e(n.options.event + J(i));
    },
    tryEmit: function (t) {
      return this.canEmit() ? this.emit(t) : void (this.state = ye);
    },
    canEmit: function () {
      for (var t = 0; t < this.requireFail.length; ) {
        if (!(this.requireFail[t].state & (ye | fe))) return !1;
        t++;
      }
      return !0;
    },
    recognize: function (t) {
      var e = lt({}, t);
      return c(this.options.enable, [this, e])
        ? (this.state & (ge | Te | ye) && (this.state = fe),
          (this.state = this.process(e)),
          void (this.state & (de | ve | me | Te) && this.tryEmit(e)))
        : (this.reset(), void (this.state = ye));
    },
    process: function (t) {},
    getTouchAction: function () {},
    reset: function () {}
  }),
    u(tt, $, {
      defaults: { pointers: 1 },
      attrTest: function (t) {
        var e = this.options.pointers;
        return 0 === e || t.pointers.length === e;
      },
      process: function (t) {
        var e = this.state,
          n = t.eventType,
          i = e & (de | ve),
          r = this.attrTest(t);
        return i && (n & Mt || !r) ? e | Te : i || r ? (n & Rt ? e | me : e & de ? e | ve : de) : ye;
      }
    }),
    u(et, tt, {
      defaults: { event: 'pan', threshold: 10, pointers: 1, direction: kt },
      getTouchAction: function () {
        var t = this.options.direction,
          e = [];
        return t & Wt && e.push(le), t & qt && e.push(ce), e;
      },
      directionTest: function (t) {
        var e = this.options,
          n = !0,
          i = t.distance,
          r = t.direction,
          s = t.deltaX,
          o = t.deltaY;
        return (
          r & e.direction ||
            (e.direction & Wt
              ? ((r = 0 === s ? zt : 0 > s ? Nt : Xt), (n = s != this.pX), (i = Math.abs(t.deltaX)))
              : ((r = 0 === o ? zt : 0 > o ? Yt : Ft), (n = o != this.pY), (i = Math.abs(t.deltaY)))),
          (t.direction = r),
          n && i > e.threshold && r & e.direction
        );
      },
      attrTest: function (t) {
        return (
          tt.prototype.attrTest.call(this, t) && (this.state & de || (!(this.state & de) && this.directionTest(t)))
        );
      },
      emit: function (t) {
        (this.pX = t.deltaX), (this.pY = t.deltaY);
        var e = K(t.direction);
        e && (t.additionalEvent = this.options.event + e), this._super.emit.call(this, t);
      }
    }),
    u(nt, tt, {
      defaults: { event: 'pinch', threshold: 0, pointers: 2 },
      getTouchAction: function () {
        return [he];
      },
      attrTest: function (t) {
        return (
          this._super.attrTest.call(this, t) && (Math.abs(t.scale - 1) > this.options.threshold || this.state & de)
        );
      },
      emit: function (t) {
        if (1 !== t.scale) {
          var e = t.scale < 1 ? 'in' : 'out';
          t.additionalEvent = this.options.event + e;
        }
        this._super.emit.call(this, t);
      }
    }),
    u(it, $, {
      defaults: { event: 'press', pointers: 1, time: 251, threshold: 9 },
      getTouchAction: function () {
        return [ae];
      },
      process: function (t) {
        var e = this.options,
          n = t.pointers.length === e.pointers,
          i = t.distance < e.threshold,
          s = t.deltaTime > e.time;
        if (((this._input = t), !i || !n || (t.eventType & (Rt | Mt) && !s))) this.reset();
        else if (t.eventType & wt)
          this.reset(),
            (this._timer = r(
              function () {
                (this.state = ge), this.tryEmit();
              },
              e.time,
              this
            ));
        else if (t.eventType & Rt) return ge;
        return ye;
      },
      reset: function () {
        clearTimeout(this._timer);
      },
      emit: function (t) {
        this.state === ge &&
          (t && t.eventType & Rt
            ? this.manager.emit(this.options.event + 'up', t)
            : ((this._input.timeStamp = gt()), this.manager.emit(this.options.event, this._input)));
      }
    }),
    u(rt, tt, {
      defaults: { event: 'rotate', threshold: 0, pointers: 2 },
      getTouchAction: function () {
        return [he];
      },
      attrTest: function (t) {
        return this._super.attrTest.call(this, t) && (Math.abs(t.rotation) > this.options.threshold || this.state & de);
      }
    }),
    u(st, tt, {
      defaults: { event: 'swipe', threshold: 10, velocity: 0.3, direction: Wt | qt, pointers: 1 },
      getTouchAction: function () {
        return et.prototype.getTouchAction.call(this);
      },
      attrTest: function (t) {
        var e,
          n = this.options.direction;
        return (
          n & (Wt | qt)
            ? (e = t.overallVelocity)
            : n & Wt
            ? (e = t.overallVelocityX)
            : n & qt && (e = t.overallVelocityY),
          this._super.attrTest.call(this, t) &&
            n & t.offsetDirection &&
            t.distance > this.options.threshold &&
            t.maxPointers == this.options.pointers &&
            mt(e) > this.options.velocity &&
            t.eventType & Rt
        );
      },
      emit: function (t) {
        var e = K(t.offsetDirection);
        e && this.manager.emit(this.options.event + e, t), this.manager.emit(this.options.event, t);
      }
    }),
    u(ot, $, {
      defaults: { event: 'tap', pointers: 1, taps: 1, interval: 300, time: 250, threshold: 9, posThreshold: 10 },
      getTouchAction: function () {
        return [ue];
      },
      process: function (t) {
        var e = this.options,
          n = t.pointers.length === e.pointers,
          i = t.distance < e.threshold,
          s = t.deltaTime < e.time;
        if ((this.reset(), t.eventType & wt && 0 === this.count)) return this.failTimeout();
        if (i && s && n) {
          if (t.eventType != Rt) return this.failTimeout();
          var o = this.pTime ? t.timeStamp - this.pTime < e.interval : !0,
            a = !this.pCenter || M(this.pCenter, t.center) < e.posThreshold;
          (this.pTime = t.timeStamp),
            (this.pCenter = t.center),
            a && o ? (this.count += 1) : (this.count = 1),
            (this._input = t);
          var u = this.count % e.taps;
          if (0 === u)
            return this.hasRequireFailures()
              ? ((this._timer = r(
                  function () {
                    (this.state = ge), this.tryEmit();
                  },
                  e.interval,
                  this
                )),
                de)
              : ge;
        }
        return ye;
      },
      failTimeout: function () {
        return (
          (this._timer = r(
            function () {
              this.state = ye;
            },
            this.options.interval,
            this
          )),
          ye
        );
      },
      reset: function () {
        clearTimeout(this._timer);
      },
      emit: function () {
        this.state == ge && ((this._input.tapCount = this.count), this.manager.emit(this.options.event, this._input));
      }
    }),
    (at.VERSION = '2.0.8'),
    (at.defaults = {
      domEvents: !1,
      touchAction: oe,
      enable: !0,
      inputTarget: null,
      inputClass: null,
      preset: [
        [rt, { enable: !1 }],
        [nt, { enable: !1 }, ['rotate']],
        [st, { direction: Wt }],
        [et, { direction: Wt }, ['swipe']],
        [ot],
        [ot, { event: 'doubletap', taps: 2 }, ['tap']],
        [it]
      ],
      cssProps: {
        touchSelect: 'none',
        touchCallout: 'none',
        contentZooming: 'none',
        userDrag: 'none',
        tapHighlightColor: 'rgba(0,0,0,0)'
      }
    });
  var Ee = 1,
    Ie = 2;
  (ut.prototype = {
    set: function (t) {
      return (
        lt(this.options, t),
        t.touchAction && this.touchAction.update(),
        t.inputTarget && (this.input.destroy(), (this.input.target = t.inputTarget), this.input.init()),
        this
      );
    },
    stop: function (t) {
      this.session.stopped = t ? Ie : Ee;
    },
    recognize: function (t) {
      var e = this.session;
      if (!e.stopped) {
        this.touchAction.preventDefaults(t);
        var n,
          i = this.recognizers,
          r = e.curRecognizer;
        (!r || (r && r.state & ge)) && (r = e.curRecognizer = null);
        for (var s = 0; s < i.length; )
          (n = i[s]),
            e.stopped === Ie || (r && n != r && !n.canRecognizeWith(r)) ? n.reset() : n.recognize(t),
            !r && n.state & (de | ve | me) && (r = e.curRecognizer = n),
            s++;
      }
    },
    get: function (t) {
      if (t instanceof $) return t;
      for (var e = this.recognizers, n = 0; n < e.length; n++) if (e[n].options.event == t) return e[n];
      return null;
    },
    add: function (t) {
      if (s(t, 'add', this)) return this;
      var e = this.get(t.options.event);
      return e && this.remove(e), this.recognizers.push(t), (t.manager = this), this.touchAction.update(), t;
    },
    remove: function (t) {
      if (s(t, 'remove', this)) return this;
      if ((t = this.get(t))) {
        var e = this.recognizers,
          n = g(e, t);
        -1 !== n && (e.splice(n, 1), this.touchAction.update());
      }
      return this;
    },
    on: function (t, e) {
      if (t !== i && e !== i) {
        var n = this.handlers;
        return (
          o(m(t), function (t) {
            (n[t] = n[t] || []), n[t].push(e);
          }),
          this
        );
      }
    },
    off: function (t, e) {
      if (t !== i) {
        var n = this.handlers;
        return (
          o(m(t), function (t) {
            e ? n[t] && n[t].splice(g(n[t], e), 1) : delete n[t];
          }),
          this
        );
      }
    },
    emit: function (t, e) {
      this.options.domEvents && ct(t, e);
      var n = this.handlers[t] && this.handlers[t].slice();
      if (n && n.length) {
        (e.type = t),
          (e.preventDefault = function () {
            e.srcEvent.preventDefault();
          });
        for (var i = 0; i < n.length; ) n[i](e), i++;
      }
    },
    destroy: function () {
      this.element && ht(this, !1),
        (this.handlers = {}),
        (this.session = {}),
        this.input.destroy(),
        (this.element = null);
    }
  }),
    lt(at, {
      INPUT_START: wt,
      INPUT_MOVE: Ot,
      INPUT_END: Rt,
      INPUT_CANCEL: Mt,
      STATE_POSSIBLE: fe,
      STATE_BEGAN: de,
      STATE_CHANGED: ve,
      STATE_ENDED: me,
      STATE_RECOGNIZED: ge,
      STATE_CANCELLED: Te,
      STATE_FAILED: ye,
      DIRECTION_NONE: zt,
      DIRECTION_LEFT: Nt,
      DIRECTION_RIGHT: Xt,
      DIRECTION_UP: Yt,
      DIRECTION_DOWN: Ft,
      DIRECTION_HORIZONTAL: Wt,
      DIRECTION_VERTICAL: qt,
      DIRECTION_ALL: kt,
      Manager: ut,
      Input: _,
      TouchAction: G,
      TouchInput: k,
      MouseInput: Y,
      PointerEventInput: F,
      TouchMouseInput: L,
      SingleTouchInput: W,
      Recognizer: $,
      AttrRecognizer: tt,
      Tap: ot,
      Pan: et,
      Swipe: st,
      Pinch: nt,
      Rotate: rt,
      Press: it,
      on: p,
      off: f,
      each: o,
      merge: yt,
      extend: Tt,
      assign: lt,
      inherit: u,
      bindFn: h,
      prefixed: E
    });
  var Ae = 'undefined' != typeof t ? t : 'undefined' != typeof self ? self : {};
  (Ae.Hammer = at),
    'function' == typeof define && define.amd
      ? define(function () {
          return at;
        })
      : 'undefined' != typeof module && module.exports
      ? (module.exports = at)
      : (t[n] = at);
})(window, document, 'Hammer');
