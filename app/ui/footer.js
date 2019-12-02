const html = require('choo/html');
const Component = require('choo/component');
// const version = require('../../package.json').version;
// const { browserName } = require('../utils');

class Footer extends Component {
  constructor(name, state) {
    super(name);
    this.state = state;
  }

  update() {
    return false;
  }

  createElement() {
    const translate = this.state.translate;
    // const browser = browserName();
    const feedbackUrl = `https://github.com/EYHN/send/issues/new`;
    return html`
      <footer
        class="flex flex-col md:flex-row items-start w-full flex-none self-start p-6 md:p-8 font-medium text-xs text-grey-60 dark:text-grey-40 md:items-center justify-between"
      >
        <a class="mozilla-logo m-2" href="https://www.mozilla.org/">
          Modified from Firefox Send from Mozilla.
        </a>
        <ul
          class="flex flex-col md:flex-row items-start md:items-center md:justify-end"
        >
          <!--<li class="m-2">
            <a href="https://www.mozilla.org/about/legal/terms/services/#send">
              ${translate('footerLinkLegal')}
            </a>
          </li>-->
          <li class="m-2">
            <a href="/legal">
              ${translate('footerLinkLegal')} &
              ${translate('footerLinkPrivacy')}
            </a>
          </li>
          <!--<li class="m-2">
            <a href="https://www.mozilla.org/privacy/websites/#cookies">
              ${translate('footerLinkCookies')}
            </a>
          </li>-->
          <li class="m-2">
            <a href="https://github.com/eyhn/send">GitHub </a>
          </li>
          <li class="m-2">
            <a
              href="${feedbackUrl}"
              rel="noreferrer noopener"
              class="feedback-link"
              alt="Feedback"
              target="_blank"
            >
              ${translate('siteFeedback')}
            </a>
          </li>
        </ul>
      </footer>
    `;
  }
}

module.exports = Footer;
