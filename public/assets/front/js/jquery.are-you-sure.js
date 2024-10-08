!(function (e) {
  e.fn.areYouSure = function (i) {
    var t = e.extend(
        {
          message: 'You have unsaved changes!',
          dirtyClass: 'dirty',
          change: null,
          silent: !1,
          addRemoveFieldsMarksDirty: !1,
          fieldEvents: 'change keyup propertychange input',
          fieldSelector: ':input:not(input[type=submit]):not(input[type=button])'
        },
        i
      ),
      r = function (i) {
        if (
          i.hasClass('ays-ignore') ||
          i.hasClass('aysIgnore') ||
          i.attr('data-ays-ignore') ||
          void 0 === i.attr('name')
        )
          return null;
        if (i.is(':disabled')) return 'ays-disabled';
        var t,
          r = i.attr('type');
        switch ((i.is('select') && (r = 'select'), r)) {
          case 'checkbox':
          case 'radio':
            t = i.is(':checked');
            break;
          case 'select':
            (t = ''),
              i.find('option').each(function (i) {
                var r = e(this);
                r.is(':selected') && (t += r.val());
              });
            break;
          default:
            t = i.val();
        }
        return t;
      },
      n = function (e) {
        e.data('ays-orig', r(e));
      },
      a = function (i) {
        var n = function (e) {
            var i = e.data('ays-orig');
            return void 0 === i ? !1 : r(e) != i;
          },
          a = e(this).is('form') ? e(this) : e(this).parents('form');
        if (n(e(i.target))) return void o(a, !0);
        if ((($fields = a.find(t.fieldSelector)), t.addRemoveFieldsMarksDirty)) {
          var s = a.data('ays-orig-field-count');
          if (s != $fields.length) return void o(a, !0);
        }
        var d = !1;
        $fields.each(function () {
          return ($field = e(this)), n($field) ? ((d = !0), !1) : void 0;
        }),
          o(a, d);
      },
      s = function (i) {
        var r = i.find(t.fieldSelector);
        e(r).each(function () {
          n(e(this));
        }),
          e(r).unbind(t.fieldEvents, a),
          e(r).bind(t.fieldEvents, a),
          i.data('ays-orig-field-count', e(r).length),
          o(i, !1);
      },
      o = function (e, i) {
        var r = i != e.hasClass(t.dirtyClass);
        e.toggleClass(t.dirtyClass, i),
          r &&
            (t.change && t.change.call(e, e),
            i && e.trigger('dirty.areYouSure', [e]),
            i || e.trigger('clean.areYouSure', [e]),
            e.trigger('change.areYouSure', [e]));
      },
      d = function () {
        var i = e(this),
          r = i.find(t.fieldSelector);
        e(r).each(function () {
          var i = e(this);
          i.data('ays-orig') || (n(i), i.bind(t.fieldEvents, a));
        }),
          i.trigger('checkform.areYouSure');
      },
      u = function () {
        s(e(this));
      };
    return (
      t.silent ||
        window.aysUnloadSet ||
        ((window.aysUnloadSet = !0),
        e(window).bind('beforeunload', function () {
          if ((($dirtyForms = e('form').filter('.' + t.dirtyClass)), 0 != $dirtyForms.length)) {
            if (navigator.userAgent.toLowerCase().match(/msie|chrome/)) {
              if (window.aysHasPrompted) return;
              (window.aysHasPrompted = !0),
                window.setTimeout(function () {
                  window.aysHasPrompted = !1;
                }, 900);
            }
            return t.message;
          }
        })),
      this.each(function (i) {
        if (e(this).is('form')) {
          var r = e(this);
          r.submit(function () {
            r.removeClass(t.dirtyClass);
          }),
            r.bind('reset', function () {
              o(r, !1);
            }),
            r.bind('rescan.areYouSure', d),
            r.bind('reinitialize.areYouSure', u),
            r.bind('checkform.areYouSure', a),
            s(r);
        }
      })
    );
  };
})(jQuery);
