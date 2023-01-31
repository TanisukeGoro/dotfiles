function chefrepi-dbup
    php artisan db:wipe
    php artisan backup:mysql-restore --restore-latest-backup --yes
    php artisan migrate
    php artisan db:seed --class=Database\\Seeders\\Product\\Production\\UnlimitedPlan\\UnlimitedPlanSeeder
    php artisan db:seed --class=Database\\Seeders\\Product\\Production\\UnlimitedPlan\\UnlimitedPlanVariantSeeder
    php artisan db:assign-recipe-tag
    php artisan db:assign-recipe-tag
end
