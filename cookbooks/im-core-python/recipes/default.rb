include_recipe "mysql::client"
include_recipe "python"
include_recipe "git"

python_pip "django"
python_pip "pyaml"
python_pip "werkzeug"
python_pip "mako"
python_pip "mysql-python"
python_pip "sqlalchemy"

remote_file '/usr/bin/imsol' do
  source 'https://gist.githubusercontent.com/lsamayoa01/b04df47b24eebe228a88/raw/8721d6b7f7cd74a3a2887caa3a0dbdf3b607ea6f/imsol'
  mode 0755
  action :create_if_missing
end

git "/InteractuaMovil/im-core-python" do
 repository "https://github.com/interactuamovil/im-core-python"
 reference "master"
 action :sync
end