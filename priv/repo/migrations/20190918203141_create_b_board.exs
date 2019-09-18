defmodule Chan.Repo.Migrations.CreateBBoard do
  use Ecto.Migration
  import Ecto.Query

  def up do
    create table(:b_threads) do
      add :subject, :string
      add :op, :integer
      add :posts, {:array, :integer}

      timestamps()
    end
    
    create table(:b_posts) do
      add :name, :string
      add :comment, :text
      add :image, :string

      timestamps()
    end
    
    Chan.Repo.insert!(%Chan.Board{
      abb: "b",
      name: "random",
      posts: 0
    })
  end
  
  def down do
    drop table(:b_threads)
    drop table(:b_posts)
    from(b in Chan.Board, where: b.abb == "b") |> Chan.Repo.delete_all
  end
end