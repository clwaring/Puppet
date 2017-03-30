Facter.add(:groupname) do
  setcode do
    Facter.value(:hostname)[0..2]
  end
end

Facter.add(:osname) do
  setcode do
    Facter.value(:hostname)[4..6]
  end
end
