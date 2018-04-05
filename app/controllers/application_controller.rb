class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end


# 
# Nuestra solución es la siguiente. Primero debemos crear la aplicación de Rails con el siguiente comando:
#
# $ rails new music
# $ cd music
#
# Luego, tenemos que crear los modelos con los siguientes comandos:
#
# $ rails g model Artist name image_url
# $ rails g model Album artist:references image_url released_at:date
# $ rails g model Song album:references name number:integer preview_url
#
# Sobre el modelo Artist agregamos dos columnas: name e image_url. Como no especificamos el tipo, Rails asume que queremos columnas tipo string (varchar en la base de datos) de 255 caracteres.
#
# Fíjate la forma en que utilizamos artist:references al crear el modelo Album. El tipo references crea un campo llamado artist_id en la tabla albums (que es una llave foránea) y además le agrega la relación al modelo:
#
# class Album < ActiveRecord::Base
#   belongs_to :artist
# end
#
# Sin embargo, en el modelo Artist debemos agregar manualmente has_many :albums:
#
# class Artist < ActiveRecord::Base
#   has_many :albums
# end
#
# Lo mismo ocurre en la relación entre Album y Song.
#
# Por último, para crear las tablas en la base de datos debemos correr las migraciones:
#
# $ rake db:migrate
#
# Para más información sobre asociaciones te recomendamos la guía oficial de Rails - Asociaciones
