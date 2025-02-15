# ベースイメージ
FROM ruby:3.3.0


# 作業ディレクトリを設定
WORKDIR /app

# Gemfile をコピーして bundle install
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリケーションファイルをコピー
COPY . .

# ポートを指定
EXPOSE 3000

# サーバー起動コマンド
CMD ["rails", "server", "-b", "0.0.0.0"]