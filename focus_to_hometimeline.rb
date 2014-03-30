# -*- coding: utf-8 -*-

Plugin.create(:focus_to_hometimeline) do
  command(:focus_to_home_timeline,
          name: 'ホームタイムラインタブにフォーカス',
          condition: lambda { |opt| true },
          visible: true,
          role: :window) do |opt|
            focus_to_home_timeline
          end
  
  def focus_to_home_timeline
    Plugin::GUI::Timeline.instance(:home_timeline).active!
  end

end
