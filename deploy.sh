#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# # 生成静态文件
npm run doc:build

# 进入生成的文件夹
cd docs/.vuepress/dist


# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add .
git commit -m 'deploy'

# 如果发布到  https://<USERNAME>.github.io
# git push -f git@github.com:delbug/vue3docs master

git remote add origin https://github.com/delbug/vue3docs.git
git push --set-upstream origin master:gh-pages

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:delbug/vue3docs.git master:gh-pages

cd -