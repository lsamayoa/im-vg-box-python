include_recipe "im-core-python"
include_recipe "phantomjs::default"
include_recipe "git"

directory "/Highcharts"

git "/Highcharts/highcharts.com" do
 repository "https://github.com/highslide-software/highcharts.com.git"
 reference "master"
 action :sync
end

bash "run_highcharts_webserver" do
  user "root"
  cwd "/Highcharts/highcharts.com/exporting-server/phantomjs"
  code <<-EOH
  phantomjs highcharts-convert.js -host 0.0.0.0 -port 3003
  EOH
end