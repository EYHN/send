import PluralRules from 'intl-pluralrules/plural-rules';

// 因为在 X5 内核中调用 Intl.PluralRules.supportedLocalesOf() 会爆炸，出此下策

if (typeof Intl === 'undefined') {
  if (typeof global !== 'undefined') {
    global.Intl = {
      PluralRules: PluralRules
    };
  } else if (typeof window !== 'undefined') {
    window.Intl = {
      PluralRules: PluralRules
    };
  } else {
    this.Intl = {
      PluralRules: PluralRules
    };
  }
} else {
  Intl.PluralRules = PluralRules;
}
