const html = require('choo/html');
const raw = require('choo/html/raw');
const { secondsToL10nId } = require('../utils');
const selectbox = require('./selectbox');

module.exports = function(state, emit) {
  const el = html`
    <div class="px-1">
      ${raw(
        state.translate('archiveExpiryInfo', {
          downloadCount:
            '<span class="lg:inline-block md:block sm:inline-block block"></span><select id="dlCount"></select>',
          timespan: '<select id="timespan"></select>'
        })
      )}
    </div>
  `;
  if (el.__encoded) {
    // we're rendering on the server
    return el;
  }

  const maxDownloads =
    state.user.maxDownloads === 'Infinity' ? Infinity : state.user.maxDownloads;

  const counts = state.DEFAULTS.DOWNLOAD_COUNTS.map(i =>
    i === 'Infinity' ? Infinity : i
  ).filter(i => state.capabilities.account || i <= maxDownloads);

  const dlCountSelect = el.querySelector('#dlCount');
  el.replaceChild(
    selectbox(
      state.archive.dlimit === 'Infinity' ? Infinity : state.archive.dlimit,
      counts,
      num => state.translate('downloadCount', { num }),
      value => {
        const dlimit = Math.min(value, maxDownloads);
        state.archive.dlimit = dlimit === Infinity ? 'Infinity' : dlimit;
        // if (value > max) {
        //   emit('signup-cta', 'count');
        // } else {
        emit('render');
        // }
      },
      'expire-after-dl-count-select'
    ),
    dlCountSelect
  );

  const maxExpireSeconds =
    state.user.maxExpireSeconds === 'Infinity'
      ? Infinity
      : state.user.maxExpireSeconds;

  const expires = state.DEFAULTS.EXPIRE_TIMES_SECONDS.map(i =>
    i === 'Infinity' ? Infinity : i
  ).filter(i => state.capabilities.account || i <= maxExpireSeconds);

  const timeSelect = el.querySelector('#timespan');
  el.replaceChild(
    selectbox(
      state.archive.timeLimit === 'Infinity'
        ? Infinity
        : state.archive.timeLimit,
      expires,
      num => {
        const l10n = secondsToL10nId(num);
        return state.translate(l10n.id, l10n);
      },
      value => {
        const timeLimit = Math.min(value, maxExpireSeconds);
        state.archive.timeLimit =
          timeLimit === Infinity ? 'Infinity' : timeLimit;
        // if (value > max) {
        //   emit('signup-cta', 'time');
        // } else {
        emit('render');
        // }
      },
      'expire-after-time-select'
    ),
    timeSelect
  );

  return el;
};
