# CurlData Website

Static dark-themed CurlData website packaged for Docker/nginx.

## Files

- `index.html` - Home page
- `dashboard.html` - Dashboard page with embedded frame
- `dashboard-widget.html` - Embedded dashboard code
- `blog.html` - Blog landing page
- `blog/launch.html` - Article 1: Launch
- `stats.html`, `podcast.html` - Stats and podcast pages with published content
- `about.html` - About page
- `assets/styles.css` - Site styling
- `assets/main.js` - Mobile nav toggle
- `assets/curldata-logo.png` - CurlData logo
- `Dockerfile` - nginx container definition

## Run locally with Docker

```bash
docker build -t curldata-site .
docker run --rm -p 8080:80 curldata-site
```

Then open `http://localhost:8080`.
