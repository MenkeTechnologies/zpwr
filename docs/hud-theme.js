/**
 * stryke docs — theme / CRT / neon / color-scheme toggles.
 * Vendored and simplified from audio_haxor/docs/hud-theme.js.
 * Storage keys live under the `stryke-hud-*` namespace so the two projects
 * can't clobber each other if ever opened from the same origin.
 */
(function () {
  'use strict';

  var STORAGE = {
    theme: 'stryke-hud-theme',
    crt: 'stryke-hud-crt',
    neon: 'stryke-hud-neon',
    scheme: 'stryke-hud-scheme',
  };

  var SCHEME_VAR_KEYS = [
    '--accent', '--accent-light', '--accent-glow',
    '--cyan', '--cyan-glow', '--cyan-dim',
    '--magenta', '--magenta-glow',
    '--green', '--green-bg',
    '--red',
    '--text', '--text-dim', '--text-muted',
    '--bg-primary', '--bg-secondary', '--bg-card', '--bg-hover',
    '--border', '--border-glow',
  ];

  var SCHEME_ORDER = ['cyberpunk', 'midnight', 'matrix', 'ember', 'arctic'];

  var COLOR_SCHEMES = {
    cyberpunk: {
      label: 'Cyberpunk',
      desc: 'Hot pink + cyan (default)',
      vars: {
        '--accent': '#ff2a6d', '--accent-light': '#ff6b9d',
        '--accent-glow': 'rgba(255, 42, 109, 0.4)',
        '--cyan': '#05d9e8', '--cyan-glow': 'rgba(5, 217, 232, 0.4)',
        '--cyan-dim': 'rgba(5, 217, 232, 0.15)',
        '--magenta': '#d300c5', '--magenta-glow': 'rgba(211, 0, 197, 0.3)',
        '--green': '#39ff14', '--green-bg': 'rgba(57, 255, 20, 0.08)',
        '--red': '#ff073a',
        '--text': '#e0f0ff', '--text-dim': '#7a8ba8', '--text-muted': '#3d4f6a',
        '--bg-primary': '#05050a', '--bg-secondary': '#0a0a14',
        '--bg-card': '#0d0d1a', '--bg-hover': '#12122a',
        '--border': '#1a1a3e', '--border-glow': '#2a1a4e',
      },
      lightVars: {
        '--accent': '#d6196e', '--accent-light': '#e84d8a',
        '--accent-glow': 'rgba(214, 25, 110, 0.15)',
        '--cyan': '#0891b2', '--cyan-glow': 'rgba(8, 145, 178, 0.2)',
        '--cyan-dim': 'rgba(8, 145, 178, 0.08)',
        '--magenta': '#a300a3', '--magenta-glow': 'rgba(163, 0, 163, 0.15)',
        '--green': '#15803d', '--green-bg': 'rgba(21, 128, 61, 0.08)',
        '--red': '#dc2626',
        '--text': '#1e293b', '--text-dim': '#475569', '--text-muted': '#94a3b8',
        '--bg-primary': '#f0f2f5', '--bg-secondary': '#e4e7ec',
        '--bg-card': '#ffffff', '--bg-hover': '#f7f8fa',
        '--border': '#cbd5e1', '--border-glow': '#a5b4c8',
      },
    },
    midnight: {
      label: 'Midnight',
      desc: 'Deep blue + electric purple',
      vars: {
        '--accent': '#7c3aed', '--accent-light': '#a78bfa',
        '--accent-glow': 'rgba(124, 58, 237, 0.4)',
        '--cyan': '#38bdf8', '--cyan-glow': 'rgba(56, 189, 248, 0.4)',
        '--cyan-dim': 'rgba(56, 189, 248, 0.15)',
        '--magenta': '#6366f1', '--magenta-glow': 'rgba(99, 102, 241, 0.3)',
        '--green': '#34d399', '--green-bg': 'rgba(52, 211, 153, 0.08)',
        '--red': '#f87171',
        '--text': '#e2e8f0', '--text-dim': '#94a3b8', '--text-muted': '#475569',
        '--bg-primary': '#020617', '--bg-secondary': '#0f172a',
        '--bg-card': '#1e293b', '--bg-hover': '#334155',
        '--border': '#334155', '--border-glow': '#475569',
      },
      lightVars: {
        '--accent': '#6d28d9', '--accent-light': '#8b5cf6',
        '--accent-glow': 'rgba(109, 40, 217, 0.15)',
        '--cyan': '#0284c7', '--cyan-glow': 'rgba(2, 132, 199, 0.2)',
        '--cyan-dim': 'rgba(2, 132, 199, 0.08)',
        '--magenta': '#4f46e5', '--magenta-glow': 'rgba(79, 70, 229, 0.15)',
        '--green': '#047857', '--green-bg': 'rgba(4, 120, 87, 0.08)',
        '--red': '#dc2626',
        '--text': '#0f172a', '--text-dim': '#475569', '--text-muted': '#94a3b8',
        '--bg-primary': '#f1f5f9', '--bg-secondary': '#e2e8f0',
        '--bg-card': '#ffffff', '--bg-hover': '#f8fafc',
        '--border': '#cbd5e1', '--border-glow': '#a5b4c8',
      },
    },
    matrix: {
      label: 'Matrix',
      desc: 'Green phosphor terminal',
      vars: {
        '--accent': '#00ff41', '--accent-light': '#00ff99',
        '--accent-glow': 'rgba(0, 255, 65, 0.4)',
        '--cyan': '#00ffcc', '--cyan-glow': 'rgba(0, 255, 204, 0.4)',
        '--cyan-dim': 'rgba(0, 255, 204, 0.15)',
        '--magenta': '#008f39', '--magenta-glow': 'rgba(0, 143, 57, 0.3)',
        '--green': '#00ff41', '--green-bg': 'rgba(0, 255, 65, 0.08)',
        '--red': '#ff3333',
        '--text': '#d4ffd4', '--text-dim': '#7ccc7c', '--text-muted': '#406640',
        '--bg-primary': '#000500', '--bg-secondary': '#001a00',
        '--bg-card': '#002a00', '--bg-hover': '#003a00',
        '--border': '#004d00', '--border-glow': '#006600',
      },
      lightVars: {
        '--accent': '#16a34a', '--accent-light': '#22c55e',
        '--accent-glow': 'rgba(22, 163, 74, 0.15)',
        '--cyan': '#059669', '--cyan-glow': 'rgba(5, 150, 105, 0.2)',
        '--cyan-dim': 'rgba(5, 150, 105, 0.08)',
        '--magenta': '#15803d', '--magenta-glow': 'rgba(21, 128, 61, 0.15)',
        '--green': '#16a34a', '--green-bg': 'rgba(22, 163, 74, 0.08)',
        '--red': '#dc2626',
        '--text': '#14532d', '--text-dim': '#4d7c0f', '--text-muted': '#86efac',
        '--bg-primary': '#f0fdf4', '--bg-secondary': '#dcfce7',
        '--bg-card': '#ffffff', '--bg-hover': '#f7fee7',
        '--border': '#bbf7d0', '--border-glow': '#86efac',
      },
    },
    ember: {
      label: 'Ember',
      desc: 'Burnt orange + amber',
      vars: {
        '--accent': '#f97316', '--accent-light': '#fb923c',
        '--accent-glow': 'rgba(249, 115, 22, 0.4)',
        '--cyan': '#fbbf24', '--cyan-glow': 'rgba(251, 191, 36, 0.4)',
        '--cyan-dim': 'rgba(251, 191, 36, 0.15)',
        '--magenta': '#dc2626', '--magenta-glow': 'rgba(220, 38, 38, 0.3)',
        '--green': '#84cc16', '--green-bg': 'rgba(132, 204, 22, 0.08)',
        '--red': '#ef4444',
        '--text': '#fed7aa', '--text-dim': '#d97706', '--text-muted': '#78350f',
        '--bg-primary': '#0a0503', '--bg-secondary': '#1a0f05',
        '--bg-card': '#27150a', '--bg-hover': '#3a1f0f',
        '--border': '#4a2c17', '--border-glow': '#78350f',
      },
      lightVars: {
        '--accent': '#c2410c', '--accent-light': '#ea580c',
        '--accent-glow': 'rgba(194, 65, 12, 0.15)',
        '--cyan': '#ca8a04', '--cyan-glow': 'rgba(202, 138, 4, 0.2)',
        '--cyan-dim': 'rgba(202, 138, 4, 0.08)',
        '--magenta': '#b91c1c', '--magenta-glow': 'rgba(185, 28, 28, 0.15)',
        '--green': '#65a30d', '--green-bg': 'rgba(101, 163, 13, 0.08)',
        '--red': '#dc2626',
        '--text': '#431407', '--text-dim': '#9a3412', '--text-muted': '#fdba74',
        '--bg-primary': '#fff7ed', '--bg-secondary': '#ffedd5',
        '--bg-card': '#ffffff', '--bg-hover': '#fef3c7',
        '--border': '#fed7aa', '--border-glow': '#fdba74',
      },
    },
    arctic: {
      label: 'Arctic',
      desc: 'Pale ice + steel blue',
      vars: {
        '--accent': '#60a5fa', '--accent-light': '#93c5fd',
        '--accent-glow': 'rgba(96, 165, 250, 0.4)',
        '--cyan': '#22d3ee', '--cyan-glow': 'rgba(34, 211, 238, 0.4)',
        '--cyan-dim': 'rgba(34, 211, 238, 0.15)',
        '--magenta': '#818cf8', '--magenta-glow': 'rgba(129, 140, 248, 0.3)',
        '--green': '#2dd4bf', '--green-bg': 'rgba(45, 212, 191, 0.08)',
        '--red': '#f87171',
        '--text': '#e0f2fe', '--text-dim': '#7dd3fc', '--text-muted': '#0369a1',
        '--bg-primary': '#020617', '--bg-secondary': '#0c1424',
        '--bg-card': '#0f1e33', '--bg-hover': '#1e2f4d',
        '--border': '#1e3a5f', '--border-glow': '#2e5a8a',
      },
      lightVars: {
        '--accent': '#2563eb', '--accent-light': '#3b82f6',
        '--accent-glow': 'rgba(37, 99, 235, 0.15)',
        '--cyan': '#0891b2', '--cyan-glow': 'rgba(8, 145, 178, 0.2)',
        '--cyan-dim': 'rgba(8, 145, 178, 0.08)',
        '--magenta': '#4f46e5', '--magenta-glow': 'rgba(79, 70, 229, 0.15)',
        '--green': '#0f766e', '--green-bg': 'rgba(15, 118, 110, 0.08)',
        '--red': '#dc2626',
        '--text': '#0c4a6e', '--text-dim': '#0369a1', '--text-muted': '#7dd3fc',
        '--bg-primary': '#f0f9ff', '--bg-secondary': '#e0f2fe',
        '--bg-card': '#ffffff', '--bg-hover': '#f0f9ff',
        '--border': '#bae6fd', '--border-glow': '#7dd3fc',
      },
    },
  };

  function readStored(key) {
    try { return localStorage.getItem(key); } catch (_) { return null; }
  }
  function writeStored(key, val) {
    try { localStorage.setItem(key, val); } catch (_) {}
  }

  function currentScheme() {
    return readStored(STORAGE.scheme) || 'cyberpunk';
  }

  function applyScheme(name) {
    var scheme = COLOR_SCHEMES[name];
    if (!scheme) return;
    // Inline `style.setProperty` on :root beats the CSS variable in
    // `hud-static.css` (`:root { --accent: …; }`). Without choosing
    // between `vars` (dark) and `lightVars` (light) by current theme,
    // toggling `data-theme="light"` does nothing — the inline dark
    // values stay pinned.
    var theme = document.documentElement.getAttribute('data-theme') || 'dark';
    var vars = (theme === 'light' && scheme.lightVars) ? scheme.lightVars : (scheme.vars || {});
    var root = document.documentElement;
    SCHEME_VAR_KEYS.forEach(function (k) {
      if (vars[k]) root.style.setProperty(k, vars[k]);
      else root.style.removeProperty(k);
    });
    writeStored(STORAGE.scheme, name);
    renderSchemeGrid(name);
  }

  function renderSchemeGrid(activeName) {
    var grid = document.getElementById('hudSchemeGrid');
    if (!grid) return;
    grid.innerHTML = '';
    SCHEME_ORDER.forEach(function (name) {
      var s = COLOR_SCHEMES[name];
      if (!s) return;
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'scheme-btn' + (name === activeName ? ' active' : '');
      btn.setAttribute('data-scheme', name);
      var n = document.createElement('div');
      n.className = 'scheme-btn-name';
      n.textContent = s.label;
      var d = document.createElement('div');
      d.className = 'scheme-btn-desc';
      d.textContent = s.desc;
      var prev = document.createElement('div');
      prev.className = 'scheme-btn-preview';
      ['--accent', '--cyan', '--magenta', '--green'].forEach(function (k) {
        var dot = document.createElement('span');
        dot.className = 'scheme-dot';
        dot.style.background = s.vars[k];
        prev.appendChild(dot);
      });
      btn.appendChild(n);
      btn.appendChild(d);
      btn.appendChild(prev);
      btn.addEventListener('click', function () { applyScheme(name); });
      grid.appendChild(btn);
    });
  }

  function applyTheme(theme) {
    document.documentElement.setAttribute('data-theme', theme);
    writeStored(STORAGE.theme, theme);
    var btn = document.getElementById('btnTheme');
    if (btn) btn.textContent = theme === 'light' ? 'Dark' : 'Light';
    // Re-apply the scheme so its light/dark variant takes effect.
    applyScheme(currentScheme());
  }

  function applyCrt(on) {
    var app = document.querySelector('.app');
    if (!app) return;
    app.classList.toggle('no-crt', !on);
    var h = document.getElementById('crtH');
    var v = document.getElementById('crtV');
    if (h) h.hidden = !on;
    if (v) v.hidden = !on;
    writeStored(STORAGE.crt, on ? '1' : '0');
    var btn = document.getElementById('btnCrt');
    if (btn) btn.classList.toggle('active', on);
  }

  function applyNeon(on) {
    document.body.classList.toggle('no-neon-glow', !on);
    writeStored(STORAGE.neon, on ? '1' : '0');
    var btn = document.getElementById('btnNeon');
    if (btn) btn.classList.toggle('active', on);
  }

  document.addEventListener('DOMContentLoaded', function () {
    var theme = readStored(STORAGE.theme) || 'dark';
    applyTheme(theme);

    var crt = readStored(STORAGE.crt);
    applyCrt(crt === null ? true : crt === '1');

    var neon = readStored(STORAGE.neon);
    applyNeon(neon === null ? true : neon === '1');

    var scheme = readStored(STORAGE.scheme) || 'cyberpunk';
    applyScheme(scheme);

    var btnTheme = document.getElementById('btnTheme');
    if (btnTheme) btnTheme.addEventListener('click', function () {
      var cur = document.documentElement.getAttribute('data-theme');
      applyTheme(cur === 'light' ? 'dark' : 'light');
    });

    var btnCrt = document.getElementById('btnCrt');
    if (btnCrt) btnCrt.addEventListener('click', function () {
      applyCrt(btnCrt.classList.contains('active') ? false : true);
    });

    var btnNeon = document.getElementById('btnNeon');
    if (btnNeon) btnNeon.addEventListener('click', function () {
      applyNeon(btnNeon.classList.contains('active') ? false : true);
    });
  });
})();
