---
layout: default
title: Blog
permalink: /blog/
---

<div class="container mx-auto px-4 py-8">
    <h1 class="text-4xl font-bold mb-8">Latest Blog Posts</h1>
    
    <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
        {% for post in site.posts %}
        <article class="bg-white rounded-lg shadow-md overflow-hidden">
            <div class="p-6">
                <h2 class="text-xl font-semibold mb-2">
                    <a href="{{ post.url | relative_url }}" class="text-gray-900 hover:text-blue-600">
                        {{ post.title }}
                    </a>
                </h2>
                <time datetime="{{ post.date | date_to_xmlschema }}" class="text-sm text-gray-500">
                    {{ post.date | date: "%B %d, %Y" }}
                </time>
                <p class="mt-4 text-gray-600">
                    {{ post.excerpt | strip_html | truncatewords: 30 }}
                </p>
                <a href="{{ post.url | relative_url }}" class="inline-block mt-4 text-blue-600 hover:text-blue-800">
                    Read more →
                </a>
            </div>
        </article>
        {% endfor %}
    </div>
</div>
