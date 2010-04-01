Facter.add("hardware_platform") do
        setcode do
        if Facter.value(:operatingsystem).downcase == "freebsd"
             %x{/usr/bin/uname -i}.chomp
        else
             %x{/bin/uname -i}.chomp
        end
        end
end
