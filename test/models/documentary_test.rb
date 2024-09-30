require "test_helper"

class DocumentaryTest < ActiveSupport::TestCase
  # Prueba 1: Verificar que un documental válido se puede guardar
  test "should save valid documentary" do
    documentary = Documentary.new(name: "Planet Earth", synopsis: "A documentary series showcasing different ecosystems around the world.", director: "David Attenborough")
    assert documentary.save, "Documentary should be saved successfully"
  end

  # Prueba 2: Verificar que no se guarda un documental sin nombre
  test "should not save documentary without name" do
    documentary = Documentary.new(synopsis: "A documentary about wildlife.", director: "John Doe")
    assert_not documentary.save, "Documentary without a name should not be saved"
  end

  # Prueba 3: Verificar que no se guarda un documental sin sinopsis
  test "should not save documentary without synopsis" do
    documentary = Documentary.new(name: "Nature's Fury", director: "Jane Doe")
    assert_not documentary.save, "Documentary without synopsis should not be saved"
  end

  # Prueba 4: Verificar que no se guarda un documental sin director
  test "should not save documentary without director" do
    documentary = Documentary.new(name: "Nature's Fury", synopsis: "A documentary about natural disasters.")
    assert_not documentary.save, "Documentary without director should not be saved"
  end
end
