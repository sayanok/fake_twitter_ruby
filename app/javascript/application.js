// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import "jquery3"
import "popper"
import "bootstrap"


import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "controllers"
