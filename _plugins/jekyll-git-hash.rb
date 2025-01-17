# Jekyll plugin for generating Git hash
#
# Place this file in the _plugins directory and
# use {{ site.data['hash'] }} in your Liquid templates
#
# Author: Yegor Bugayenko <yegor@tpc2.com>
# Source: http://github.com/yegor256/jekyll-git-hash
#
# Distributed under the MIT license
# Copyright Yegor Bugayenko, 2014

module Jekyll
    class GitHashGenerator < Generator
      priority :high
      safe true
      def generate(site)
        shortHash = %x( git rev-parse --short HEAD ).strip
        longHash = %x( git rev-parse HEAD ).strip
        site.data['shortHash'] = shortHash
        site.data['longHash'] = longHash
      end
    end
  end