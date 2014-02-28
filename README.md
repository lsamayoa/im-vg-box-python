# IM Python Vagrant Box

Un ambiente de python listo con las marcianadas que hay que hacer para desarrollar.

## Que es ?

OS: Precise Pangolin 64bits

## Que hace ?

### Chef
- Instala Mysql client (YA NO ES UN DOLOR)
- Instala python
- Instala pip
- Instala Git
- Instala build-essentials

### im-core-python Recipe

#### IMSOL

Lo actualiza de acuerdo al gist que publique https://gist.githubusercontent.com/lsamayoa01/b04df47b24eebe228a88/

#### PIP

```
pyyaml
django
werkzeug
mako
sqlalchemy
mysql-python
``

#### Instala im-core -python

Clona el repositorio
```
git clone git@github.com:interactuamovil/im-core-python.git
```

Crea los links simbolicos
```
im-py-init.sh
```