Facter.add(:dept) do            setcode do
        domain = Facter.value(:domain)
        dept =
        if domain
            domain.split(".")[0]
        else
            nil
        end
    end
end

