# academic

Academic is a [Jekyll](http://jekyllrb.com/) theme with a focus on simplicity, typography and flexibility. I originally designed for my personal blog during my PhD thesis.

![Academic screenshot](screenshot.png)

**Simplicity**: both in design and configuration, Academic aims to let the writer and its readers focus on the content.

**Typography**: the goal of Academic is to let the author write very long and detailed posts, while being kind to its readers' eyes.

**Flexibility**: Academic can be used to generate different layouts while keeping the same look and feel.

---

Table of contents:


* [Features](#features)
* [Installation](#installation)
* [Usage](#usage)
	* [Change the brand color](#change-the-brand-color)
	* [Setup your `_config.yml` file](#setup-your-_config-yml-file)
		* [General settings](#general-settings)
		* [Author](#author)
		* [Navigation menu](#navigation-menu)
	* [Layouts](#layouts)
		* [Post layout](#post-layout)
		* [Page layout](#page-layout)
		* [About layout](#about-layout)
		* [Archive layout](#archive-layout)
		* [404 layout](#404-layout)
* [Contributing](#contributing)
* [Release log](#release-log)
* [License](#license)

## Features

+ **Responsive design** on every page
+ Designed with **typography best practices** (and my own tastes) in mind:
    + Simple but elegant fonts, with modular scale
    + High contrast colors and backgrounds as much as possible ([read more](http://contrastrebellion.com/), [and more](https://backchannel.com/how-the-web-became-unreadable-a781ddc711b6))
    + Comfortable line length (around 66 characters, [read more](http://webtypography.net/2.1.2))
    + Attention to vertical rhythm, law of proximity and so on ([read more](http://typographyhandbook.com/))
+ Add an **image thumbnail** to illustrate your posts. It's displayed both on the post list and on the post itself.
+ Add a **summary** to your posts. It's used in the posts lists and on the post itself.
+ **MathJax** support (loaded only on posts layouts)
+ **Tables and footnotes** styled by default (with the `redcarpet` markdown engine)
+ Add your name and a shortbio at the end of each post
+ Easily add a "call to action" (links to the RSS feed and your Twitter if you gave your username in the `_config.yml` file) at the end of each post and on your homepage
+ If you want to, **add a Creative Commons license** to your website directly from your `_config.yml` file
+ **About page**:
    + Responsive two-columns layout
    + Just fill out your usernames for Twitter, Github, LinkedIn, Keybase ; contact email or personal website ; link to your curriculum vitae.
    + Academic automatically loads your Github profile picture.
+ Choose between a **navigation menu** at the top or a **short pitch** for your blog
+ Set a `dateformat` for the whole website directly from the `_config.yml` file
+ Navigation menu:
    + Hide pages from the navigation menu
    + Add external links in the menu from the `_config.yml` file
+ 404 page layout

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "academic"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: academic
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install academic
```

I suggest you install and use `redcarpet` to generate your markdown ([read more](http://jekyllrb.com/docs/configuration/#redcarpet)).

## Usage

### Change the brand color

Academic uses 4 shades of grey (very dark grey for the main content, ligther greys to lessen the emphasis on some elements) and a single "brand" color.

By default, the brand color is `#d33682` (purple). If it's not to your taste, you can easily change it by overriding the `$brand-color` variable in `/assets/styles.scss`.

```scss
$brand-color: red;
```

### Setup your `_config.yml` file

#### General settings

`title_html`: [optional] you can style the title of your website with html elements.

Example:

```html
title_html: "<b>hello</b>world"
```

`pitch`: [optional] a small sentence or motto to quickly describe your blog. If no pitch is detected, Academic will fill the top bar with a navigation menu. If you want to display a short description for your website, Academic will NOT generate a navigation menu. Please note that `pitch` is only used in the top bar ; it is different from the `description` field (used in the footer and the meta tags for search engines).

`description`: [recommended] short description for search engines. It's displayed in the footer of every page. Not to be confused with `pitch`.

`cc`: [optional] choose among the [Creative Commons](https://creativecommons.org/licenses/) licenses (v4). Accepted values are : `by`, `by-sa`, `by-nd`, `by-nc`, `by-nc-sa`, `by-nc-nd`. Defining the `cc` variable will add a small sentence in the footer. If no value is given, a small copyright is added instead.

`dateformat`: [optional] format the dates of the whole website. Default "%b %-d, %Y". Read [the documentation](https://help.shopify.com/themes/liquid/filters/additional-filters#date) to learn how you can customize the date format.

`nb_posts_page`: [optional] number of posts to display on the homepage. By default, all posts are listed. Note that you should create a page with the archive layout.

`archive_permalink`: [optional] permalink of the archive page. Set to `"/archive"` by default.

#### Author

`email`: [optional] add email address in about layout.

`curriculum`: [optional]

+ `name`: [optional] text of the link. Default : Curriculum Vitae.
+ `url`: [mandatory] url of the curriculum file.

`shortbio`: [optional] describe yourself in a sentence or two. If `shortbio` is defined, a small element is added at the end of the post to introduce the author to the readers.

`author_display`: [optional] if `true`, the author's name (and `author_website`) is added in the footer. `false` by default.

`author_website`: [optional] url to the external website of the author. If `author_website` exists, it is added in the about layout and in the footer (if `author_display` is `true`).

`twitter_username`: [optional] your Twitter username. If it exists, your account will be linked in the "call to action" boxes (homepage and posts), in the footer and on the about page.

`github_username`: [optional] your Github username. If it exists, your account will be linked in the footer and on the about page.

`keybase_username`: [optional] your Keybase username. If it exists, your account will be linked on the about page.

`linkedin_username`: [optional] your LinkedIn username. If it exists, your account will be linked on the about page.

#### Navigation menu

`nav_ext_links`: [optional] you can choose to add external links in the top bar. Each item has two attributes:

+ `name`: [mandatory] text for the link
+ `url`: [mandatory] url

Example:

```yaml
nav_ext_links:
  - name: Link 1
    url: http://jupiterbroadcasting.com/
  - name: Link 2
    url: http://wallabag.org/
```

### Layouts

#### Post layout

In the yaml header, you can add some tags to help Academic.

`summary`: [optional] a short text or abstract. Used in the posts lists and on the post page.

`thumbnail`: [optional] relative path to image or absolute url to an image that describes your post. Used in the posts lists and on the post page.

#### Page layout

In the yaml header, you can add some tags to help Academic.

`invisible`: [optional] if `true`, then this page will not be listed in the navigation menu.

#### About layout

Will automatically put the content of the page on the right column. The left column will automatically be filled with the author info provided in the `_config.yml`.

#### Archive layout

Create a `archive.md` page, choose the "archive" layout. You don't need to write anything in this file, all posts published will be listed in reverse chronological order.

#### 404 layout

Create a `404.md` page, set the layout:

```
layout: pagenotfound
```

The content of the page will be used in the 404 page.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gaalcaras/academic. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Release log

+ 0.1.0 : first release of the theme.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

