class RenameLibrariesToLibraryBranches < ActiveRecord::Migration
  def change
    rename_table :libraries, :library_branches
  end
end
