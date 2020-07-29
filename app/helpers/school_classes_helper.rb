module SchoolClassesHelper
    def slugify(name)
        slug = name.split(' ').join('-')
    end
end
