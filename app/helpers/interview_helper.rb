# frozen_string_literal: true

QUESTION_INTRODUCION = '自己紹介をしてください。'
QUESTION_WORK = [
  '現職でどのような仕事をしていますか',
  '得意な業務、苦手な仕事はどんなことですか？',
  '今までの仕事でどのような課題を感じていて、それにどう対処したか',
  '今まで仕事をしてきた中で一番辛かったことはなんですか。',
  '仕事をしてどんな時に一番やりがいを感じますか。',
  '転職理由は何でしょうか？',
  '転職先を選ぶ上で重視することは',
  '転職活動にてどういう軸で動いてますか？意識して見てるポイント教えて下さい',
  '一番アピールできるプロジェクトはなにか',
  '失敗した経験はありますか？その経験から何を学びましたか？',
  '現職での課題と解決方法はなんですか？（どんな課題があるか。どうやって解決しようとしているか）',
  '仕事で1番充実したときのことを話してください。',
  'これまでで最大の挫折はなんですか。'
].freeze
QUESTION_PERSONAL = [
  '上司から改善フィードバックとしてどういうものを貰うことが多いですか？',
  'ストレスがあったときにどう感じ 、それをどうやって解消していますか？',
  'チームメンバーへのコミュニケーションで意識していることはなにか',
  '趣味は？'
].freeze
QUESTION_COMMUNICATION = [
  '今の会社で同僚とどのような関係を築いているのか説明してください',
  '他の人と意見が対立したときのことを教えてください。'
].freeze

QUESTION_ENGINEER = [
  'どのような開発の進め方を経験してこられましたか？',
  'スキル・経験値のアップはどんなことをしてますか？'
].freeze
QUESTION_CAREER = [
  'どのようなエンジニアになりたいですか？',
  'キャリアプランをどのように考えていますか？'
].freeze

module InterviewHelper
  def extract_question_introduction
    QUESTION_INTRODUCION
  end

  def extract_question_work
    QUESTION_WORK.sample
  end

  def extract_question_personal
    QUESTION_PERSONAL.sample
  end

  def extract_question_communication
    QUESTION_COMMUNICATION.sample
  end

  def extract_question_engineer
    QUESTION_ENGINEER.sample
  end

  def extract_question_career
    QUESTION_CAREER.sample
  end
end
