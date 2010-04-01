# kernel_type.rb
# Obtains the type of kernel the system is currently booted to so we can update it.
# This is primarily used for Ubuntu as it is the only one the differentiates. 

Facter.add("kernel_type") do
        setcode do
                %x{uname -r | awk -F- '{ print $3 }'}.chomp
        end
end

