/// <reference types="vitest/config" />
import { TanStackRouterVite } from '@tanstack/router-plugin/vite';
import react from '@vitejs/plugin-react-swc';
import { defineConfig } from 'vite';
import checker from 'vite-plugin-checker';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    TanStackRouterVite({}),
    react(),
    checker({
      overlay: { panelStyle: 'height: 100dvh; max-height: 100dvh' },
      typescript: { buildMode: true },
    }),
  ],
  server: {
    port: 3001,
    hmr: {
      overlay: true,
    },
  },
  build: {
    sourcemap: true, // Source map generation must be turned on
  },
  test: {}
});
