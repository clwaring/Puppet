Facter.add(:groupname) do
  setcode do
    Facter.value(:hostname)[0..2]
  end
end

Facter.add(:employeename) do
  setcode do
    Facter.value(:hostname)[4..-1][/(.*?)(\-|\z)/,1]
  end
end

Facter.add(:osname) do
  setcode do
    Facter.value(:hostname)[12..-1][/(.*?)(\-|\z)/,1]
  end
end
